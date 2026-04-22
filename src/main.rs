pub mod cache;
pub mod error;
pub mod generator;
pub mod state;
pub mod types;

pub use error::{Result, ScriptError};
use rustls::crypto;
pub use state::{Cli as ScriptConfig, State};

#[tokio::main]
async fn main() -> error::Result<()> {
    crypto::aws_lc_rs::default_provider()
        .install_default()
        .unwrap();
    let state = State::init()?;
    let releases = types::ObsidianReleases::fetch_releases(state.clone()).await?;
    if let Some(saved_data) = cache::SavedData::load_cache()?
        .update_from(releases, &state)
        .await?
    {
        saved_data.save_cache()?;

        let datagen = generator::Generator::new(saved_data)?;
        datagen.generate_plugins()?;
        datagen.generate_themes()?;
        if !state.options().local {
            println!("true");
        }
    } else {
        if !state.options().local {
            println!("false");
        }
    }

    Ok(())
}
