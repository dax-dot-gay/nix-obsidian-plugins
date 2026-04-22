use std::process::Output;

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

    #[error("Failed to hash downloaded object from {repo}: CODE={code}, REASON={reason}")]
    HashFailure {
        repo: String,
        code: i32,
        reason: String,
    },
}

impl ScriptError {
    pub fn hash_failure(repo: impl Into<String>, output: Output) -> Self {
        Self::HashFailure {
            repo: repo.into(),
            code: output.status.code().unwrap_or(-1),
            reason: String::from_utf8(output.stdout).unwrap_or(String::from("UNKNOWN")),
        }
    }
}

pub type Result<T> = std::result::Result<T, ScriptError>;
