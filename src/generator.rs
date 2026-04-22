use std::{fs, path::Path};

use chrono::DateTime;
use handlebars::{DirectorySourceOptionsBuilder, Handlebars};
use serde::{Deserialize, Serialize};

use crate::cache::{Plugin, SavedData, Theme};

fn format_date (h: &handlebars::Helper, _: &Handlebars, _: &handlebars::Context, _: &mut handlebars::RenderContext, out: &mut dyn handlebars::Output) -> handlebars::HelperResult {
    let param = h.param(0).unwrap();
    let date = DateTime::parse_from_rfc3339(param.value().as_str().unwrap()).unwrap();
    out.write(date.format("%m/%d/%Y %I:%M %p").to_string().as_str())?;
    Ok(())
}

#[derive(Clone, Debug)]
pub struct Generator {
    cache: SavedData,
    templater: Handlebars<'static>,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct GeneratedDocs {
    pub release_commit: String,
    pub plugin_list: Vec<Plugin>,
    pub theme_list: Vec<Theme>
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
        hbs.register_helper("formatDate", Box::new(format_date));
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

    pub fn generate_docs(&self) -> crate::Result<()> {
        let data = GeneratedDocs {
            release_commit: self.cache.latest_commit.clone(),
            plugin_list: self.cache.plugins.clone().into_values().collect(),
            theme_list: self.cache.themes.clone().into_values().collect(),
        };
        fs::write(
            Path::new("./data/generated.md"),
            self.templater.render("generated.md", &data)?
        )?;
        Ok(())
    }
}
