# nix-obsidian-plugins
*Automatically-generated Nix packages for Obsidian themes & plugins*

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/dax-dot-gay/nix-obsidian-plugins/update-packages.yml)
![GitHub License](https://img.shields.io/github/license/dax-dot-gay/nix-obsidian-plugins)
![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fgithub.com%2Fdax-dot-gay%2Fnix-obsidian-plugins%2Fraw%2Frefs%2Fheads%2Fmain%2Fdata%2Fcache.json&query=%24.count_plugins&label=plugins)
![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fgithub.com%2Fdax-dot-gay%2Fnix-obsidian-plugins%2Fraw%2Frefs%2Fheads%2Fmain%2Fdata%2Fcache.json&query=%24.count_themes&label=themes)

This repository provides a flake containing automatically-generated packages for (most) Obsidian themes and plugins. The relevant data is pulled from [obsidianmd/obsidian-releases](https://github.com/obsidianmd/obsidian-releases), and updated daily at midnight.

### Installation

Only flake-based installations are supported, and can be set up as follows:

```nix
{
    inputs = {
        nixpkgs.url = "...";
        nix-obsidian-plugins = {
            url = "github:dax-dot-gay/nix-obsidian-plugins";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ...
    };

    outputs = {nixpkgs, nix-obsidian-plugins, ...}: {
        ...
    }
}
```

### Usage

Once installed, the relevant packages can be used with `overlays.default` or from `nix-obsidian-plugins.plugins.<system>` and `nix-obsidian-plugins.themes.<system>`. These packages are intended for use with HomeManager's Obsidian config in the following options:

```nix
programs.obsidian.defaultSettings.communityPlugins.*.pkg
programs.obsidian.defaultSettings.themes.*.pkg
programs.obsidian.vaults.<name>.settings.communityPlugins.*.pkg
programs.obsidian.vaults.<name>.settings.themes.*.pkg
```

A list of packages (themes & plugins) is automatically generated in [data/generated.md](./data/generated.md)