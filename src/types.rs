use octocrab::{params::repos::Reference, repos::RepoHandler};
use serde::{Deserialize, Serialize, de::DeserializeOwned};
use std::collections::HashMap;

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct RelPluginStats {
    pub downloads: u64,
    pub updated: u64,

    #[serde(flatten)]
    pub versions: HashMap<String, u64>,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
#[serde(rename_all = "camelCase")]
pub struct RelPlugin {
    pub id: String,
    pub name: String,
    pub author: String,
    pub description: String,
    pub repo: String,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
#[serde(rename_all = "lowercase")]
pub enum RelThemeMode {
    Dark,
    Light,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
#[serde(rename_all = "camelCase")]
pub struct RelTheme {
    pub name: String,
    pub author: String,
    pub repo: String,
    pub screenshot: String,

    #[serde(default)]
    pub modes: Vec<RelThemeMode>,

    #[serde(default)]
    pub legacy: bool,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct ObsidianReleases {
    pub commit: String,
    pub themes: HashMap<String, RelTheme>,
    pub plugins: HashMap<String, RelPlugin>,
    pub plugin_stats: HashMap<String, RelPluginStats>,
}

impl ObsidianReleases {
    async fn get_content<'a, T: DeserializeOwned>(
        state: crate::State,
        repo: &RepoHandler<'a>,
        path: impl AsRef<str>,
    ) -> crate::Result<T> {
        let path = path.as_ref().to_string();
        println!("Path: {path}");
        let content_items = repo
            .get_content()
            .r#ref(state.options().branch)
            .path(path.clone())
            .send()
            .await?
            .take_items();
        if let Some(content) = content_items.first().cloned() {
            if let Some(decoded) = content
                .decoded_content()
                .and_then(|v| if v.is_empty() { None } else { Some(v) })
            {
                Ok(serde_json::from_str::<T>(&decoded)?)
            } else {
                if let Some(download_url) = content.download_url.clone() {
                    Ok(reqwest::get(download_url).await?.json::<T>().await?)
                } else {
                    Err(crate::ScriptError::MissingRepoFile {
                        repo: state.options().repo,
                        path,
                    })
                }
            }
        } else {
            Err(crate::ScriptError::MissingRepoFile {
                repo: state.options().repo,
                path,
            })
        }
    }

    pub async fn fetch_releases(state: crate::State) -> crate::Result<Self> {
        let options = state.options();
        let client = state.client();
        let (owner, repo_name) = options
            .repo
            .split_once("/")
            .expect("Expected valid repo string (<owner>/<repo>)");
        let repo = client.repos(owner, repo_name);
        let commit_hash = if let octocrab::models::repos::Object::Commit { sha, .. } = repo
            .get_ref(&Reference::Branch("master".to_string()))
            .await?
            .object
        {
            sha
        } else {
            panic!(
                "The {0} branch of {1} should return a commit, not a tag!",
                state.options().branch,
                state.options().repo
            );
        };

        Ok(Self {
            commit: commit_hash,
            themes: Self::get_content::<Vec<RelTheme>>(
                state.clone(),
                &repo,
                "community-css-themes.json",
            )
            .await?
            .into_iter()
            .map(|v| (v.name.clone(), v))
            .collect(),
            plugins: Self::get_content::<Vec<RelPlugin>>(
                state.clone(),
                &repo,
                "community-plugins.json",
            )
            .await?
            .into_iter()
            .map(|v| (v.id.clone(), v))
            .collect(),
            plugin_stats: Self::get_content::<HashMap<String, RelPluginStats>>(
                state.clone(),
                &repo,
                "community-plugin-stats.json",
            )
            .await?,
        })
    }
}
