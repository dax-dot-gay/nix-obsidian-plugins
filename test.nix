pkgs: {
  "80s-neon" = (
    let
      baseUrl = "https://github.com/deathau/80s-Neon-for-Obsidian.md.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
      pname = "80s-neon";
      version = "0.0.0";
      outputHash = "sha256-PoywLvwJypJrQFAkAf44MCEhWhiUwdtl4c1pMnnWsag=";
      outputHashMode = "recursive";
      outputHashAlgo = "sha256";

      nativeBuildInputs = [
        pkgs.git
        pkgs.mktemp
      ];
      SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
      phases = [ "installPhase" ];
      installPhase = ''
        temp="$(mktemp -d)"
        GIT_SSL_NO_VERIFY=true git clone --revision=7f45219862f9b88f13558bf248fd8edd3d5d464b --depth=1 ${baseUrl} $temp/archive
        mkdir -p $out
        cp $temp/archive/manifest.json $out/manifest.json
        cp $temp/archive/theme.css $out/theme.css
        rm -rf $temp
      '';
      meta = {
        description = "";
        homepage = "https://github.com/deathau/80s-Neon-for-Obsidian.md";
      };
    }
  );
}
