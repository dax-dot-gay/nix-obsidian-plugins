pub mod error;
pub mod types;
pub mod state;
pub mod cache;

pub use error::{Result, ScriptError};
use rustls::crypto;
pub use state::{State, Cli as ScriptConfig};

#[tokio::main]
async fn main() -> error::Result<()> {
    crypto::aws_lc_rs::default_provider().install_default().unwrap();
    let state = State::init()?;
    let releases = types::ObsidianReleases::fetch_releases(state.clone()).await?;

    Ok(())
}
