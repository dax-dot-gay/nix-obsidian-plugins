use clap::Parser;
use octocrab::Octocrab;

/// Command-line runner for generating plugin/theme JSON
#[derive(Clone, Debug, clap::Parser)]
#[command(version, about, long_about = None)]
pub struct Cli {
    /// Whether the command should directly modify local files or make a commit to upstream
    #[arg(short, long)]
    pub local: bool,

    /// Github Personal Access Token
    /// Requires write permissions to the repo if not running locally
    #[arg(long = "token", env = "GITHUB_TOKEN")]
    pub github_token: String,

    /// obsidian-releases repository in format <owner>/<repo>
    #[arg(
        long = "repo",
        env = "OBSIDIAN_RELEASES_REPO",
        default_value = "obsidianmd/obsidian-releases"
    )]
    pub repo: String,

    /// Branch name
    #[arg(
        long = "branch",
        env = "OBSIDIAN_RELEASES_BRANCH",
        default_value = "master"
    )]
    pub branch: String,
}

#[derive(Clone, Debug)]
pub struct State {
    options: Cli,
    client: Octocrab,
}

impl State {
    pub fn init() -> crate::Result<Self> {
        let cli = Cli::parse();
        let client = Octocrab::builder()
            .personal_token(cli.github_token.clone())
            .build()?;
        Ok(Self {
            options: cli,
            client,
        })
    }

    pub fn options(&self) -> Cli {
        self.options.clone()
    }

    pub fn client(&self) -> Octocrab {
        self.client.clone()
    }
}
