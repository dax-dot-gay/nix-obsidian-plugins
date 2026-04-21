use std::{
    collections::HashMap,
    path::{self, PathBuf},
};

use chrono::Utc;
use serde::{Deserialize, Serialize};

use crate::{
    State,
    types::{ObsidianReleases, RelPlugin, RelTheme, RelThemeMode},
};

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct Plugin {
    pub id: String,
    pub name: String,
    pub author: String,
    pub description: String,
    pub repo: String,

    pub latest_version: semver::Version,
    pub last_update: chrono::DateTime<Utc>,
    pub hash: String,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct Theme {
    pub name: String,
    pub author: String,
    pub repo: String,
    pub screenshot: String,

    #[serde(default)]
    pub modes: Vec<RelThemeMode>,

    #[serde(default)]
    pub legacy: bool,

    pub last_update: chrono::DateTime<Utc>,
    pub update_delta: chrono::TimeDelta,
    pub hash: String,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
pub enum DeprecatedKind {
    Theme,
    Plugin,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct DeprecatedItem {
    pub id: String,
    pub deprecation_time: chrono::DateTime<Utc>,
    pub kind: DeprecatedKind,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct SavedData {
    pub latest_commit: String,
    pub plugins: HashMap<String, Plugin>,
    pub themes: HashMap<String, Theme>,
    pub deprecated: HashMap<String, DeprecatedItem>,
}

impl Default for SavedData {
    fn default() -> Self {
        Self {
            latest_commit: String::new(),
            plugins: HashMap::new(),
            themes: HashMap::new(),
            deprecated: HashMap::new(),
        }
    }
}

impl SavedData {
    pub fn load_cache() -> crate::Result<Self> {
        if PathBuf::from("./data/cache.json").exists() {
            Ok(serde_json::from_str::<Self>(&std::fs::read_to_string(
                "./data/cache.json",
            )?)?)
        } else {
            Ok(Self::default())
        }
    }

    async fn update_plugin(
        current: Plugin,
        latest: RelPlugin,
        version: semver::Version,
    ) -> crate::Result<Plugin> {
        Ok(current)
    }
    async fn update_theme(current: Theme, latest: RelTheme) -> crate::Result<Theme> {
        Ok(current)
    }

    pub async fn update_from(
        mut self,
        releases: ObsidianReleases,
        state: State,
    ) -> crate::Result<Self> {
        if self.latest_commit == releases.commit {
            return Ok(self);
        } else {
            self.latest_commit = releases.commit.clone();
        }

        for removed_plugin in self
            .plugins
            .clone()
            .into_keys()
            .filter(|v| !releases.plugins.contains_key(v))
        {
            let _ = self.plugins.remove(&removed_plugin);
            let _ = self.deprecated.insert(
                removed_plugin.clone(),
                DeprecatedItem {
                    id: removed_plugin,
                    deprecation_time: Utc::now(),
                    kind: DeprecatedKind::Plugin,
                },
            );
        }
        for removed_theme in self
            .plugins
            .clone()
            .into_keys()
            .filter(|v| !releases.plugins.contains_key(v))
        {
            let _ = self.themes.remove(&removed_theme);
            let _ = self.deprecated.insert(
                removed_theme.clone(),
                DeprecatedItem {
                    id: removed_theme,
                    deprecation_time: Utc::now(),
                    kind: DeprecatedKind::Theme,
                },
            );
        }

        for (id, plugin) in self.plugins.clone() {
            let mut versions = releases
                .plugin_stats
                .get(&id)
                .cloned()
                .unwrap()
                .versions
                .keys()
                .cloned()
                .filter_map(|v| {
                    if let Ok(version) = semver::Version::parse(&v) {
                        Some(version)
                    } else {
                        None
                    }
                })
                .collect::<Vec<_>>();
            versions.sort_by(|a, b| b.cmp(a));
            if let Some(latest) = versions.first().cloned() {
                if latest > plugin.latest_version {
                    let _ = self.plugins.insert(
                        id.clone(),
                        Self::update_plugin(
                            plugin,
                            releases.plugins.get(&id).cloned().unwrap(),
                            latest,
                        )
                        .await?,
                    );
                }
            }
        }

        for (id, theme) in self.themes.clone() {
            let release = releases.themes.get(&id).cloned().unwrap();
            if Utc::now() > theme.last_update + theme.update_delta {
                let _ = self
                    .themes
                    .insert(id.clone(), Self::update_theme(theme, release).await?);
            }
        }

        Ok(self)
    }
}
