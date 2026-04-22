pub mod error;
pub mod types;
pub mod state;
pub mod cache;
pub mod generator;

pub use error::{Result, ScriptError};
use rustls::crypto;
pub use state::{State, Cli as ScriptConfig};

#[tokio::main]
async fn main() -> error::Result<()> {
    crypto::aws_lc_rs::default_provider().install_default().unwrap();
    let state = State::init()?;
    let releases = types::ObsidianReleases::fetch_releases(state.clone()).await?;
    let saved_data = cache::SavedData::load_cache()?.update_from(releases, &state).await?;
    saved_data.save_cache()?;

    let datagen = generator::Generator::new(saved_data)?;
    datagen.generate_plugins()?;

    Ok(())
}
