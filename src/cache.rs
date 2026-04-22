use std::{
    collections::BTreeMap,
    fs,
    path::{Path, PathBuf},
};

use bytes::Buf;
use chrono::{TimeDelta, Utc};
use flate2::read::GzDecoder;
use http_body_util::BodyExt as _;
use octocrab::params::repos::Reference;
use serde::{Deserialize, Serialize};
use serde_json::json;
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
    pub revision: String,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
#[serde(rename_all = "snake_case", tag = "mode")]
pub enum ThemeGenerationMode {
    Standard,
    Alternate,
    #[serde(rename_all = "camelCase")]
    StandardManifest {
        author: String,
        min_app_version: String,
        name: String,
        version: String,
    },
    #[serde(rename_all = "camelCase")]
    AlternateManifest {
        author: String,
        min_app_version: String,
        name: String,
        version: String,
    },
    #[serde(rename_all = "camelCase")]
    Release {
        manifest_url: String,
        style_url: String,
    },
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
    pub revision: String,
    pub mode: ThemeGenerationMode,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
pub enum ItemKind {
    Theme,
    Plugin,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct DeprecatedItem {
    pub id: String,
    pub deprecation_time: chrono::DateTime<Utc>,
    pub kind: ItemKind,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct ErroredItem {
    pub id: String,
    pub error_time: chrono::DateTime<Utc>,
    pub kind: ItemKind,
    pub error: String,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct SavedData {
    pub latest_commit: String,
    #[serde(default)]
    pub plugins: BTreeMap<String, Plugin>,

    #[serde(default)]
    pub themes: BTreeMap<String, Theme>,

    #[serde(default)]
    pub deprecated: BTreeMap<String, DeprecatedItem>,

    #[serde(default)]
    pub errored: BTreeMap<String, ErroredItem>,
}

impl Default for SavedData {
    fn default() -> Self {
        Self {
            latest_commit: String::new(),
            plugins: BTreeMap::new(),
            themes: BTreeMap::new(),
            deprecated: BTreeMap::new(),
            errored: BTreeMap::new(),
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

    async fn fetch_into(
        o_path: &PathBuf,
        file: impl AsRef<str>,
        latest_repo: impl AsRef<str>,
        version: impl AsRef<str>,
    ) -> crate::Result<()> {
        let file = file.as_ref().to_string();
        if let Ok(response) = reqwest::get(format!(
            "https://github.com/{}/releases/download/{}/{}",
            latest_repo.as_ref().to_string(),
            version.as_ref().to_string(),
            file.clone()
        ))
        .await?
        .error_for_status()
        {
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
        println!(
            "PLUGIN: Fetching {} ({}) v{}",
            latest.id.clone(),
            latest.repo.clone(),
            version.clone().to_string()
        );
        let latest_repo = latest.repo.clone();
        let output = tempdir()?;
        let o_path = output.path().to_path_buf();
        Self::fetch_into(
            &o_path,
            "main.js",
            latest_repo.clone(),
            version.clone().to_string(),
        )
        .await?;
        Self::fetch_into(
            &o_path,
            "manifest.json",
            latest_repo.clone(),
            version.clone().to_string(),
        )
        .await?;
        Self::fetch_into(
            &o_path,
            "styles.css",
            latest_repo.clone(),
            version.clone().to_string(),
        )
        .await?;
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
                latest_version: version.clone(),
                last_update: Utc::now(),
                hash,
                revision: version.to_string(),
            })
        } else {
            Err(ScriptError::hash_failure(latest.repo.clone(), cmd_result))
        }
    }

    async fn generate_theme(state: State, latest: RelTheme) -> crate::Result<Theme> {
        println!(
            "THEME: Fetching {} ({})",
            latest.name.clone(),
            latest.repo.clone()
        );
        let latest_repo = latest.repo.clone();
        let (owner, repo_name) = latest_repo.split_once("/").unwrap();
        let client = state.client();
        let repo = client.repos(owner.to_string(), repo_name.to_string());
        let branch = repo.list_branches().send().await?.take_items()[0].clone();
        let downloaded_data = repo
            .download_tarball(Reference::Branch(branch.name.clone()))
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

        let generation_mode: ThemeGenerationMode = if fo_path.join("manifest.json").exists()
            && fo_path.join("theme.css").exists()
        {
            fs::copy(fo_path.join("manifest.json"), &o_path.join("manifest.json"))?;
            fs::copy(fo_path.join("theme.css"), &o_path.join("theme.css"))?;
            ThemeGenerationMode::Standard
        } else if fo_path.join("manifest.json").exists() && fo_path.join("obsidian.css").exists() {
            println!(" .. Using fallback: manifest + obsidian.css");
            fs::copy(fo_path.join("manifest.json"), &o_path.join("manifest.json"))?;
            fs::copy(fo_path.join("obsidian.css"), &o_path.join("theme.css"))?;
            ThemeGenerationMode::Alternate
        } else if fo_path.join("obsidian.css").exists() {
            println!(" .. Using fallback: obsidian.css + generated manifest");
            fs::copy(fo_path.join("obsidian.css"), &o_path.join("theme.css"))?;
            fs::write(
                &o_path.join("manifest.json"),
                json!({
                    "author": latest.author.clone(),
                    "minAppVersion": "0.16.0",
                    "name": latest.name.clone(),
                    "version": "0.0.0"
                })
                .to_string(),
            )?;
            ThemeGenerationMode::AlternateManifest {
                author: latest.author.clone(),
                min_app_version: "0.16.0".into(),
                name: latest.name.clone(),
                version: "0.0.0".into(),
            }
        } else if fo_path.join("theme.css").exists() {
            println!(" .. Using fallback: theme.css + generated manifest");
            fs::copy(fo_path.join("theme.css"), &o_path.join("theme.css"))?;
            fs::write(
                &o_path.join("manifest.json"),
                json!({
                    "author": latest.author.clone(),
                    "minAppVersion": "0.16.0",
                    "name": latest.name.clone(),
                    "version": "0.0.0"
                })
                .to_string(),
            )?;
            ThemeGenerationMode::StandardManifest {
                author: latest.author.clone(),
                min_app_version: "0.16.0".into(),
                name: latest.name.clone(),
                version: "0.0.0".into(),
            }
        } else if let Ok(latest_release) = repo.releases().get_latest().await {
            Self::fetch_into(
                &o_path,
                "theme.css",
                latest_repo.clone(),
                latest_release.tag_name.clone(),
            )
            .await?;
            Self::fetch_into(
                &o_path,
                "manifest.json",
                latest_repo.clone(),
                latest_release.tag_name.clone(),
            )
            .await?;
            if o_path.join("theme.css").exists() && o_path.join("manifest.json").exists() {
                println!(" .. Using fallback: release");
                ThemeGenerationMode::Release {
                    manifest_url: format!(
                        "https://github.com/{}/releases/download/{}/{}",
                        latest_repo.clone(),
                        latest_release.tag_name.clone(),
                        "manifest.json"
                    ),
                    style_url: format!(
                        "https://github.com/{}/releases/download/{}/{}",
                        latest_repo.clone(),
                        latest_release.tag_name.clone(),
                        "theme.css"
                    ),
                }
            } else {
                return Err(ScriptError::theme_format(latest.repo.clone()));
            }
        } else {
            return Err(ScriptError::theme_format(latest.repo.clone()));
        };

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
                hash,
                revision: branch.commit.sha,
                mode: generation_mode,
            })
        } else {
            Err(ScriptError::hash_failure(latest.repo.clone(), cmd_result))
        }
    }

    pub async fn update_from(
        mut self,
        releases: ObsidianReleases,
        state: &State,
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
            let _ = self.errored.remove(&removed_plugin);
            let _ = self.deprecated.insert(
                removed_plugin.clone(),
                DeprecatedItem {
                    id: removed_plugin,
                    deprecation_time: Utc::now(),
                    kind: ItemKind::Plugin,
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
            let _ = self.errored.remove(&removed_theme);
            let _ = self.deprecated.insert(
                removed_theme.clone(),
                DeprecatedItem {
                    id: removed_theme,
                    deprecation_time: Utc::now(),
                    kind: ItemKind::Theme,
                },
            );
        }

        for (id, theme) in releases.themes.clone() {
            if self
                .errored
                .get(&id)
                .is_some_and(|v| v.error_time + TimeDelta::days(7) > Utc::now())
            {
                continue;
            }
            if let Some(existing) = self.themes.get(&id).cloned() {
                if Utc::now() > existing.last_update + existing.update_delta {
                    match Self::generate_theme(state.clone(), theme).await {
                        Ok(generated) => {
                            let _ = self.themes.insert(id.clone(), generated);
                            let _ = self.errored.remove(&id);
                        }
                        Err(e) => {
                            println!(" .. ERR({e})");
                            let _ = self.errored.insert(
                                id.clone(),
                                ErroredItem {
                                    id,
                                    error_time: Utc::now(),
                                    kind: ItemKind::Theme,
                                    error: e.to_string(),
                                },
                            );
                        }
                    }
                }
            } else {
                match Self::generate_theme(state.clone(), theme).await {
                    Ok(generated) => {
                        let _ = self.themes.insert(id.clone(), generated);
                        let _ = self.errored.remove(&id);
                    }
                    Err(e) => {
                        println!(" .. ERR({e})");
                        let _ = self.errored.insert(
                            id.clone(),
                            ErroredItem {
                                id,
                                error_time: Utc::now(),
                                kind: ItemKind::Theme,
                                error: e.to_string(),
                            },
                        );
                    }
                }
            }
        }

        for (id, plugin) in releases.plugins.clone() {
            if self
                .errored
                .get(&id)
                .is_some_and(|v| v.error_time + TimeDelta::days(7) > Utc::now())
            {
                continue;
            }
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
                                let _ = self.errored.remove(&id);
                            }
                            Err(e) => {
                                println!(" .. ERR({e})");
                                let _ = self.errored.insert(
                                    id.clone(),
                                    ErroredItem {
                                        id,
                                        error_time: Utc::now(),
                                        kind: ItemKind::Plugin,
                                        error: e.to_string(),
                                    },
                                );
                            }
                        }
                    }
                }
            } else {
                if let Some(latest) = versions.first().cloned() {
                    match Self::generate_plugin(state.clone(), plugin, latest).await {
                        Ok(generated) => {
                            let _ = self.plugins.insert(id.clone(), generated);
                            let _ = self.errored.remove(&id);
                        }
                        Err(e) => {
                            println!(" .. ERR({e})");
                            let _ = self.errored.insert(
                                id.clone(),
                                ErroredItem {
                                    id,
                                    error_time: Utc::now(),
                                    kind: ItemKind::Plugin,
                                    error: e.to_string(),
                                },
                            );
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

        fs::write(
            Path::new("./data/cache.json"),
            serde_json::to_string_pretty(&self)?,
        )?;
        Ok(())
    }
}
