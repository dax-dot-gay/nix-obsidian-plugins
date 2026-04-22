use std::{fs, path::Path};

use handlebars::{DirectorySourceOptionsBuilder, Handlebars};

use crate::cache::SavedData;

#[derive(Clone, Debug)]
pub struct Generator {
    cache: SavedData,
    templater: Handlebars<'static>,
}

impl Generator {
    pub fn new(cache: SavedData) -> crate::Result<Self> {
        let mut hbs = Handlebars::new();
        hbs.register_templates_directory(
            Path::new("./templates"),
            DirectorySourceOptionsBuilder::default()
                .tpl_extension(".hbs")
                .build()
                .unwrap(),
        )?;
        hbs.register_escape_fn(|v| v.replace("'", "\""));
        Ok(Self {
            cache,
            templater: hbs,
        })
    }

    pub fn generate_plugins(&self) -> crate::Result<()> {
        let mut items: Vec<String> = Vec::new();
        for (_, plugin) in self.cache.plugins.clone() {
            items.push(self.templater.render("plugin", &plugin)?);
        }

        fs::write(
            Path::new("./data/plugins.nix"),
            format!("pkgs: {{\n    {}\n}}", items.join("\n    ")),
        )?;

        Ok(())
    }

    pub fn generate_themes(&self) -> crate::Result<()> {
        let mut items: Vec<String> = Vec::new();
        for (_, theme) in self.cache.themes.clone() {
            items.push(self.templater.render(match theme.mode.clone() {
                crate::cache::ThemeGenerationMode::Standard => "theme/standard",
                crate::cache::ThemeGenerationMode::Alternate => "theme/alternate",
                crate::cache::ThemeGenerationMode::StandardManifest { .. } => "theme/standard-manifest",
                crate::cache::ThemeGenerationMode::AlternateManifest { .. } => "theme/alternate-manifest",
                crate::cache::ThemeGenerationMode::Release { .. } => "theme/release",
            }, &theme)?);
        }

        fs::write(
            Path::new("./data/themes.nix"),
            format!("pkgs: {{\n    {}\n}}", items.join("\n    ")),
        )?;

        Ok(())
    }
}
