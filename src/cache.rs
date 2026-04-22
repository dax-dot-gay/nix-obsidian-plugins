use std::{collections::HashMap, fs, path::{Path, PathBuf}};

use bytes::Buf;
use chrono::{TimeDelta, Utc};
use flate2::read::GzDecoder;
use http_body_util::BodyExt as _;
use octocrab::params::repos::Reference;
use serde::{Deserialize, Serialize};
use tempfile::tempdir;

use crate::{
    ScriptError, State,
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

    async fn fetch_into(o_path: &PathBuf, file: impl AsRef<str>, latest_repo: impl AsRef<str>, version: semver::Version) -> crate::Result<()> {
        let file = file.as_ref().to_string();
        if let Ok(response) = reqwest::get(format!("https://github.com/{}/releases/download/{}/{}", latest_repo.as_ref().to_string(), version.to_string(), file.clone())).await?.error_for_status() {
            fs::write(o_path.join(file.clone()), response.bytes().await?)?;
            Ok(())
        } else {
            Ok(())
        }
    }

    async fn generate_plugin(
        _: State,
        latest: RelPlugin,
        version: semver::Version,
    ) -> crate::Result<Plugin> {
        println!("PLUGIN: Fetching {} ({}) v{}", latest.name.clone(), latest.repo.clone(), version.clone().to_string());
        let latest_repo = latest.repo.clone();
        let output = tempdir()?;
        let o_path = output.path().to_path_buf();
        Self::fetch_into(&o_path, "main.js", latest_repo.clone(), version.clone()).await?;
        Self::fetch_into(&o_path, "manifest.json", latest_repo.clone(), version.clone()).await?;
        Self::fetch_into(&o_path, "styles.css", latest_repo.clone(), version.clone()).await?;
        let cmd_result = std::process::Command::new("nix")
            .arg("hash")
            .arg("path")
            .arg(o_path.as_os_str())
            .output()?;
        if cmd_result.status.success() {
            let hash = String::from_utf8(cmd_result.stdout)
                    .unwrap()
                    .trim()
                    .to_string();
            println!(" .. OK({hash})");
            Ok(Plugin {
                id: latest.id.clone(),
                name: latest.name.clone(),
                author: latest.author.clone(),
                description: latest.description.clone(),
                repo: latest.repo.clone(),
                latest_version: version,
                last_update: Utc::now(),
                hash,
            })
        } else {
            Err(ScriptError::hash_failure(latest.repo.clone(), cmd_result))
        }
    }

    async fn generate_theme(state: State, latest: RelTheme) -> crate::Result<Theme> {
        println!("THEME: Fetching {} ({})", latest.name.clone(), latest.repo.clone());
        let latest_repo = latest.repo.clone();
        let (owner, repo_name) = latest_repo.split_once("/").unwrap();
        let client = state.client();
        let repo = client.repos(owner.to_string(), repo_name.to_string());
        let branch = repo.list_branches().send().await?.take_items()[0].name.clone();
        let downloaded_data = repo
            .download_tarball(Reference::Branch(branch))
            .await?
            .into_body()
            .collect()
            .await?
            .to_bytes()
            .reader();
        let tar = GzDecoder::new(downloaded_data);
        let mut archive = tar::Archive::new(tar);
        let full_output = tempdir()?;
        archive.unpack(full_output.path())?;
        let output = tempdir()?;

        let mut fo_path = full_output.path().to_path_buf();
        let o_path = output.path().to_path_buf();

        if !fo_path.join("manifest.json").exists() {
            fo_path = fs::read_dir(fo_path.clone())?.next().unwrap()?.path();
        }

        fs::copy(
            fo_path.join("manifest.json"),
            &o_path.join("manifest.json"),
        )?;
        fs::copy(fo_path.join("theme.css"), &o_path.join("theme.css"))?;
        let cmd_result = std::process::Command::new("nix")
            .arg("hash")
            .arg("path")
            .arg(o_path.as_os_str())
            .output()?;
        if cmd_result.status.success() {
            let hash = String::from_utf8(cmd_result.stdout)
                    .unwrap()
                    .trim()
                    .to_string();
            println!(" .. OK({hash})");
            Ok(Theme {
                name: latest.name.clone(),
                author: latest.author.clone(),
                repo: latest.repo.clone(),
                screenshot: latest.screenshot.clone(),
                modes: latest.modes.clone(),
                legacy: latest.legacy,
                last_update: Utc::now(),
                update_delta: TimeDelta::days(rand::random_range(3..30)),
                hash
            })
        } else {
            Err(ScriptError::hash_failure(latest.repo.clone(), cmd_result))
        }
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

        for (id, theme) in releases.themes.clone() {
            if let Some(existing) = self.themes.get(&id).cloned() {
                if Utc::now() > existing.last_update + existing.update_delta {
                    match Self::generate_theme(state.clone(), theme).await {
                        Ok(generated) => {
                            let _ = self.themes.insert(id.clone(), generated);
                        }, Err(e) => {
                            println!(" .. ERR({e})");
                        }
                    }
                }
            } else {
                match Self::generate_theme(state.clone(), theme).await {
                        Ok(generated) => {
                            let _ = self.themes.insert(id.clone(), generated);
                        }, Err(e) => {
                            println!(" .. ERR({e})");
                        }
                    }
            }
        }

        for (id, plugin) in releases.plugins.clone() {
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
            if let Some(existing) = self.plugins.get(&id).cloned() {
                if let Some(latest) = versions.first().cloned() {
                    if latest > existing.latest_version {
                        match Self::generate_plugin(state.clone(), plugin, latest).await {
                        Ok(generated) => {
                            let _ = self.plugins.insert(id.clone(), generated);
                        },Err(e) => {
                            println!(" .. ERR({e})");
                        }
                    }
                    }
                }
            } else {
                if let Some(latest) = versions.first().cloned() {
                    match Self::generate_plugin(state.clone(), plugin, latest).await {
                        Ok(generated) => {
                            let _ = self.plugins.insert(id.clone(), generated);
                        }, Err(e) => {
                            println!(" .. ERR({e})");
                        }
                    }
                }
            }
        }

        

        Ok(self)
    }

    pub fn save_cache(&self) -> crate::Result<()> {
        if !Path::new("./data").exists() {
            fs::create_dir_all(Path::new("./data"))?;
        }

        fs::write(Path::new("./data/cache.json"), serde_json::to_string_pretty(&self)?)?;
        Ok(())
    }
}
