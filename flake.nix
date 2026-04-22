{
  description = "Obsidian community plugins & themes for NixOS/home-manager";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs =
    { nixpkgs, ... }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      inherit (nixpkgs) lib;

      forAllSystems = lib.genAttrs supportedSystems;
    in
    rec {
      overlays.default = _: pkgs: { obsidian-community = packages.${pkgs.stdenv.hostPlatform.system}; };
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          plugins = import ./data/plugins.nix pkgs;
        }
      );
    };
}
