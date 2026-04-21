#[derive(Debug, thiserror::Error)]
pub enum ScriptError {
    #[error("Unexpected error: {0:?}")]
    Unknown(#[from] anyhow::Error),

    #[error("JSON error: {0:?}")]
    Json(#[from] serde_json::Error),

    #[error("Github SDK error (octocrab::*): {0:?}")]
    Github(#[from] octocrab::Error),

    #[error("File not found in repository {repo}: {path}")]
    MissingRepoFile { repo: String, path: String },

    #[error("Request error in fallback (reqwest::*): {0:?}")]
    Reqwest(#[from] reqwest::Error),

    #[error("IOError: {0:?}")]
    Io(#[from] std::io::Error),
}

impl ScriptError {}

pub type Result<T> = std::result::Result<T, ScriptError>;
