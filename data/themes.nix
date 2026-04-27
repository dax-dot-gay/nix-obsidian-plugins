pkgs: {
    "80s-neon" = (
    let
        baseUrl = "https://github.com/deathau/80s-Neon-for-Obsidian.md.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "80s-neon";
        version = "7f45219862f9b88f13558bf248fd8edd3d5d464b";
        outputHash = "sha256-PoywLvwJypJrQFAkAf44MCEhWhiUwdtl4c1pMnnWsag=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7f45219862f9b88f13558bf248fd8edd3d5d464b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/deathau/80s-Neon-for-Obsidian.md";
        };
    }
);
    "amoled-serenity" = (
    let
        baseUrl = "https://github.com/darthdemono/AMOLED-Serenity.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "amoled-serenity";
        version = "413f8cfe2c6e813b8942e405c8391020623b87a8";
        outputHash = "sha256-Kp+qnIkyz+xQ28TyxOh3jLu4JauFnjkiesBZTJyNLqk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=413f8cfe2c6e813b8942e405c8391020623b87a8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/darthdemono/AMOLED-Serenity";
        };
    }
);
    "abate" = (
    let
        baseUrl = "https://github.com/ricedev10/Abate-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "abate";
        version = "6a5e5920c280eed20c42c7925316c2a0489945f1";
        outputHash = "sha256-9PVPeWw8p7+giSyxYgf3MAsyGFnkVPyiKboLheGxTfQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6a5e5920c280eed20c42c7925316c2a0489945f1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ricedev10/Abate-theme";
        };
    }
);
    "abecedarium" = (
    let
        baseUrl = "https://github.com/zalenza/Abecedarium-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "abecedarium";
        version = "91ceb2720f6b4bf1cb0a54eac9c2c2094556be40";
        outputHash = "sha256-3hNkIaF0OFp6knJqgu3IKWho8loHZ7UmUfWoV+FMKdQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=91ceb2720f6b4bf1cb0a54eac9c2c2094556be40 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zalenza/Abecedarium-theme";
        };
    }
);
    "absolute-gruv" = (
    let
        baseUrl = "https://github.com/kkYrusobad/AbsoluteGruv.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "absolute-gruv";
        version = "cd412aeebb234374c4f9beed60c8e0096817324d";
        outputHash = "sha256-U/W6wwfjVoq5I3D0pCCg8x/dXDRkp3I30MlvfryaJk0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cd412aeebb234374c4f9beed60c8e0096817324d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"kkY\", \"minAppVersion\": \"0.16.0\", \"name\": \"AbsoluteGruv\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kkYrusobad/AbsoluteGruv";
        };
    }
);
    "abyssal" = (
    let
        baseUrl = "https://github.com/tazpellegrini/abyssalobsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "abyssal";
        version = "9c220c0c712d6754ee8597680d12a4f3510b8f35";
        outputHash = "sha256-7oe5hPEsLwIjgTG0TZAHn6AybUktmNChEQkbO++kCKA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9c220c0c712d6754ee8597680d12a4f3510b8f35 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tazpellegrini/abyssalobsidian";
        };
    }
);
    "adrenaline" = (
    let
        baseUrl = "https://github.com/Spekulucius/obsidian-adrenaline.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "adrenaline";
        version = "5f21f3fc28613d3d0dff1a5321c1973af580a975";
        outputHash = "sha256-WzvHznTzgOqnaFAYg0U6Gg9jtsPwB0xKlf/CH2YdzXg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5f21f3fc28613d3d0dff1a5321c1973af580a975 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Spekulucius/obsidian-adrenaline";
        };
    }
);
    "adwaita" = (
    let
        baseUrl = "https://github.com/birneee/obsidian-adwaita-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "adwaita";
        version = "b2e7175add31b6692aa41f4b8c27c9489ab6d4ca";
        outputHash = "sha256-hPk21IogTlNJ8dMefi3wX2QXtMp7cUdYZfNAWnYa5ks=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b2e7175add31b6692aa41f4b8c27c9489ab6d4ca --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/birneee/obsidian-adwaita-theme";
        };
    }
);
    "agate" = (
    let
        baseUrl = "https://github.com/solm0/Agate.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "agate";
        version = "d8936a5196c1866ed2ac8428cdf9e7d20dc14289";
        outputHash = "sha256-jI0bdcegddwBEO0i/LFmk/XlQUdFHmqkIh2PS5yUWng=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d8936a5196c1866ed2ac8428cdf9e7d20dc14289 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/solm0/Agate";
        };
    }
);
    "al-dente" = (
    let
        baseUrl = "https://github.com/chad-bennett/al-dente-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "al-dente";
        version = "703512f6780a19be679381b107082e76d6c9d746";
        outputHash = "sha256-Mp0G7P6QsRWVfud+ksdR4HXnACkIkuQTyVaev2y6qPg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=703512f6780a19be679381b107082e76d6c9d746 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"chad-bennett\", \"minAppVersion\": \"0.16.0\", \"name\": \"Al Dente\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/chad-bennett/al-dente-obsidian-theme";
        };
    }
);
    "allium" = (
    let
        baseUrl = "https://github.com/xainapse/Allium.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "allium";
        version = "e906f898c75d5f8a9da800fc39c649a0979ed96f";
        outputHash = "sha256-8leQEUZtzlaZvTR1U9XdvqUVe0TgQqWbHwMLku/snG0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e906f898c75d5f8a9da800fc39c649a0979ed96f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/xainapse/Allium";
        };
    }
);
    "amethyst" = (
    let
        baseUrl = "https://github.com/cotemaxime/obsidian-amethyst.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "amethyst";
        version = "82e3effcd099be1fbcb8c115a204493a1edcd8df";
        outputHash = "sha256-iVTNxLWUhKj3aRRZjv2/TAjn8RcJIJHed7chUbPbn4s=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=82e3effcd099be1fbcb8c115a204493a1edcd8df --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"cotemaxime\", \"minAppVersion\": \"0.16.0\", \"name\": \"Amethyst\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/cotemaxime/obsidian-amethyst";
        };
    }
);
    "antique-flowers" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-antique-flowers.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "antique-flowers";
        version = "3acc76b8c5a6c24cb554be581499e3c4ee9b4bda";
        outputHash = "sha256-aAr8w0TVVbyqwwR7id3qtUzHdup5VTs0xmZC77SGDeI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3acc76b8c5a6c24cb554be581499e3c4ee9b4bda --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-antique-flowers";
        };
    }
);
    "anu-ppuccin" = (
    let
        baseUrl = "https://github.com/AnubisNekhet/AnuPpuccin.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "anu-ppuccin";
        version = "b824c87ffd7c6157c05cc66d4b2b379f92859fa9";
        outputHash = "sha256-nqSYhtG7VpG1+fOohHpSPYOrKm7WGBKzqPauXX0jFFQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b824c87ffd7c6157c05cc66d4b2b379f92859fa9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/AnubisNekhet/AnuPpuccin";
        };
    }
);
    "apatheia" = (
    let
        baseUrl = "https://github.com/AmadeusWM/Obsidian-Apatheia.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "apatheia";
        version = "87b28d0c83153a2fdf6df4124fe0cc77cf66eb53";
        outputHash = "sha256-9mEWt5GidA/8RnaW//6uRchIwZ4HgHiEdBu2404rOkU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=87b28d0c83153a2fdf6df4124fe0cc77cf66eb53 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/AmadeusWM/Obsidian-Apatheia";
        };
    }
);
    "apex" = (
    let
        baseUrl = "https://github.com/clearlysid/apex.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "apex";
        version = "16234a5d5f943bd994292225170635fa23e99139";
        outputHash = "sha256-FvFGq5atKHUDA/nZST4W9ckqW4QS4/NqZ4aexNKA/aE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=16234a5d5f943bd994292225170635fa23e99139 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/clearlysid/apex";
        };
    }
);
    "arcane" = (
    let
        baseUrl = "https://github.com/xRyul/obsidian-arcane-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "arcane";
        version = "fa543d0b032c2482bbf1baacecd269633a52339f";
        outputHash = "sha256-iNADGD9arKfnABXLHVVWSWmVN1K5utAFzHw6P+VhpUI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fa543d0b032c2482bbf1baacecd269633a52339f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/xRyul/obsidian-arcane-theme";
        };
    }
);
    "ars-magna" = (
    let
        baseUrl = "https://github.com/mediapathic/obsidian-arsmagna-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ars-magna";
        version = "f59da2f217cf926c92ce184d293e6adf45a65077";
        outputHash = "sha256-AbJ0/CSykSneI+Ys8oHZZ/CP+JVUZfxq9DOES33o8I4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f59da2f217cf926c92ce184d293e6adf45a65077 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Mediapathic\", \"minAppVersion\": \"0.16.0\", \"name\": \"Ars Magna\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mediapathic/obsidian-arsmagna-theme";
        };
    }
);
    "arzaba" = (
    let
        baseUrl = "https://github.com/DarioArzaba/Obsidian-Theme-Arzaba.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "arzaba";
        version = "74fd215947d3322a53f4b728ba9adf276f5540c2";
        outputHash = "sha256-dvIUCiej2qOUrmIEYk7pKDvy4tk2NPBpUj5IxOVIm5g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=74fd215947d3322a53f4b728ba9adf276f5540c2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/DarioArzaba/Obsidian-Theme-Arzaba";
        };
    }
);
    "atom" = (
    let
        baseUrl = "https://github.com/kognise/obsidian-atom.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "atom";
        version = "650d6463d377a096520373c4752fef66f3f18f46";
        outputHash = "sha256-3Mf99KcoW7JP14XaI6V+76PdHq77gNm3vFoH7uF5vKo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=650d6463d377a096520373c4752fef66f3f18f46 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"kognise\", \"minAppVersion\": \"0.16.0\", \"name\": \"Atom\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kognise/obsidian-atom";
        };
    }
);
    "auger" = (
    let
        baseUrl = "https://github.com/davidgolding/obsidian-auger.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "auger";
        version = "3965b1faea76efcca69f57b0dfcec06e1da2b604";
        outputHash = "sha256-XPpHJBwnR5c69tk+OCl08uNWZ75Q2xkDn251jDqzwTU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3965b1faea76efcca69f57b0dfcec06e1da2b604 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/davidgolding/obsidian-auger";
        };
    }
);
    "aura" = (
    let
        baseUrl = "https://github.com/shadowash8/obsidian-aura.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "aura";
        version = "67873f044897fd28c703c87e19582660b00133b3";
        outputHash = "sha256-KaI0TKGio5/Q+23pTabqYl2/P9gOjBKmdD/LswJDKlI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=67873f044897fd28c703c87e19582660b00133b3 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/shadowash8/obsidian-aura";
        };
    }
);
    "aura-dark" = (
    let
        baseUrl = "https://github.com/possibly-not/obsidian-aura-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "aura-dark";
        version = "cdabb1167f7b8507adcb04e7132005f653c2ba17";
        outputHash = "sha256-Nv/jOTpaoYOhLPt+RHtaW3ypDR9UADTzmGdh2JW+oCA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cdabb1167f7b8507adcb04e7132005f653c2ba17 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/possibly-not/obsidian-aura-theme";
        };
    }
);
    "aurora" = (
    let
        baseUrl = "https://github.com/auroral-ui/aurora-obsidian-md.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "aurora";
        version = "db3e53cbdec34d83ff6e6d628b67baf0ec3088d6";
        outputHash = "sha256-xdQZWacxzkBFLTc0G3wNXnUBFncbarAHwMz8yG+CEQw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=db3e53cbdec34d83ff6e6d628b67baf0ec3088d6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Benny Guo\", \"minAppVersion\": \"0.16.0\", \"name\": \"Aurora\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/auroral-ui/aurora-obsidian-md";
        };
    }
);
    "aurora-twilight" = (
    let
        baseUrl = "https://github.com/Quinta0/Aurora-Twilight.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "aurora-twilight";
        version = "4f2183003c00517d81abcecc078c2ff2ee8cd79d";
        outputHash = "sha256-REsd8RAHqcFy7V6G1D9KfaOfJeQS+Z85SnRnvuokSnU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4f2183003c00517d81abcecc078c2ff2ee8cd79d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Aurora-Twilight";
        };
    }
);
    "autotape" = (
    let
        baseUrl = "https://github.com/1612elphi/autotape-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "autotape";
        version = "d06d439a5df1d665497ddec5eadd61d08fe1f5e7";
        outputHash = "sha256-KVk2/eA+IgDM7Y80HFFPYyAl7bQIjP4l+1Dj/SVFwUk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d06d439a5df1d665497ddec5eadd61d08fe1f5e7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/1612elphi/autotape-theme";
        };
    }
);
    "avatar" = (
    let
        baseUrl = "https://github.com/cxj05h/obsidian-avatar.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "avatar";
        version = "fb73535896255f1dff9d2b6d99be9df6034eb059";
        outputHash = "sha256-eBSGs0qA7VJ7VZpaVaO00gzPqhkTM+tJ08CS6M4uV4k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fb73535896255f1dff9d2b6d99be9df6034eb059 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/cxj05h/obsidian-avatar";
        };
    }
);
    "ayu" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-Ayu.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ayu";
        version = "429888ba378770da43b6f95ebe6e4ea9a24308bb";
        outputHash = "sha256-bPqYyslRrXbbAGBsCADn1dXpp5lji+fp+xZDqPewM7U=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=429888ba378770da43b6f95ebe6e4ea9a24308bb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"Ayu\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-Ayu";
        };
    }
);
    "ayu-mirage" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-Ayu_Mirage.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ayu-mirage";
        version = "89e2dcbf052c727d56ef515cd51a685614f0f201";
        outputHash = "sha256-a/QaobZ/thp3jj6qJlUksE0X072G0cjPCCR8q0+YEF0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=89e2dcbf052c727d56ef515cd51a685614f0f201 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"Ayu Mirage\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-Ayu_Mirage";
        };
    }
);
    "azure" = (
    let
        baseUrl = "https://github.com/annagracedev/obsidian-azure.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "azure";
        version = "ed8cc4576eae86711daa857a2115537e83b288f5";
        outputHash = "sha256-FcRn/YHgFWn+J8pT//AIf9cUKvG/MNKhHGARE9Cj9Bk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ed8cc4576eae86711daa857a2115537e83b288f5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/annagracedev/obsidian-azure";
        };
    }
);
    "base16-default-dark" = (
    let
        baseUrl = "https://github.com/flowing-abyss/obsidian-base16-default-dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "base16-default-dark";
        version = "5fc1ba4a52c768a568252fa4580baadad258bbb8";
        outputHash = "sha256-kJig8DoV1vd8hguecpM6n1/kqQ8DOU90iOArpzz4ImM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5fc1ba4a52c768a568252fa4580baadad258bbb8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/flowing-abyss/obsidian-base16-default-dark";
        };
    }
);
    "base2-tone" = (
    let
        baseUrl = "https://github.com/deathau/Base2Tone-For-Obsidian.md.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "base2-tone";
        version = "97fa7bff460e59e788ee5d846e16fa2c6ec07aa4";
        outputHash = "sha256-3Mk6JA4L1Dl2GIO3qYw7U4F//YyFQD9RqBkiwsCffgo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=97fa7bff460e59e788ee5d846e16fa2c6ec07aa4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"deathau\", \"minAppVersion\": \"0.16.0\", \"name\": \"Base2Tone\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/deathau/Base2Tone-For-Obsidian.md";
        };
    }
);
    "baseline" = (
    let
        baseUrl = "https://github.com/aaaaalexis/obsidian-baseline.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "baseline";
        version = "f75adfc3c03af566bce36dd82768510f5a3b7af9";
        outputHash = "sha256-N35OY4ORSq1n87dukZmQSBOp3fri5l+IB0hHlD8eBII=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f75adfc3c03af566bce36dd82768510f5a3b7af9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/aaaaalexis/obsidian-baseline";
        };
    }
);
    "behave-dark" = (
    let
        baseUrl = "https://github.com/Chrismettal/Obsidian-Behave-dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "behave-dark";
        version = "c252260da3e8f3f9daf0ddd7ecfbf52860f4ce4f";
        outputHash = "sha256-5VodiELsUEVArlyfKI1a/rm6seuuVRZrG+KKfAgEbCc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c252260da3e8f3f9daf0ddd7ecfbf52860f4ce4f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Chrismettal/Obsidian-Behave-dark";
        };
    }
);
    "black" = (
    let
        baseUrl = "https://github.com/b3h3m0th/black-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "black";
        version = "8d23024224eff311d709b595c1a55b2d8567a0ef";
        outputHash = "sha256-hoW7dkzpZcO/msv3wCCX9qMlarNZnchvPtGRFxEAQVk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8d23024224eff311d709b595c1a55b2d8567a0ef --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/b3h3m0th/black-obsidian-theme";
        };
    }
);
    "blackbird" = (
    let
        baseUrl = "https://github.com/vanadium23/obsidian-blackbird-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "blackbird";
        version = "7619ca5265323b85773be85ceef0601318bb5a2c";
        outputHash = "sha256-d59z1ZoAOGuOYziPCr38qBmdj2JL+8Xy3iCXN4ozXlg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7619ca5265323b85773be85ceef0601318bb5a2c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Ivan Chernov\", \"minAppVersion\": \"0.16.0\", \"name\": \"Blackbird\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vanadium23/obsidian-blackbird-theme";
        };
    }
);
    "blood-rush" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-blood-rush.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "blood-rush";
        version = "0097c157ac96a2878fe94ab51fd67e8f57e50027";
        outputHash = "sha256-0q0bu6uq3UBTzijYKmemza8xFWkLfe2XbVziMyN/clY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0097c157ac96a2878fe94ab51fd67e8f57e50027 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-blood-rush";
        };
    }
);
    "blossom" = (
    let
        baseUrl = "https://github.com/BlossomTheme/Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "blossom";
        version = "0f8847b2f4229de7ca6f2097b8a13d577fd9a97c";
        outputHash = "sha256-eLCB8MyiomXt+XyimXtkTTBJfb+Ro3558iMG2Yg4kp4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0f8847b2f4229de7ca6f2097b8a13d577fd9a97c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/BlossomTheme/Obsidian";
        };
    }
);
    "blue-topaz" = (
    let
        baseUrl = "https://github.com/PKM-er/Blue-Topaz_Obsidian-css.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "blue-topaz";
        version = "7af1f942f8edcefcb21aee8a9b2ded298f66f31e";
        outputHash = "sha256-5O7Js56BSAqpC0T2oFo2E4SA9Uyt/pW7oeCRCmpHCgw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7af1f942f8edcefcb21aee8a9b2ded298f66f31e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/PKM-er/Blue-Topaz_Obsidian-css";
        };
    }
);
    "blur" = (
    let
        baseUrl = "https://github.com/Jawuj/Blur-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "blur";
        version = "c585488dc93947df3ff936d2c09bab178e3f223a";
        outputHash = "sha256-X7iJT9reHDhPUr8Xu4P0PRoR9lFcen2Jhb89zHcsZ9Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c585488dc93947df3ff936d2c09bab178e3f223a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Jawuj/Blur-Theme";
        };
    }
);
    "bolt" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/Obsidian-Bolt.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "bolt";
        version = "b6aab9a2d2eaf3f2f0213e0708aaa577e6bc2073";
        outputHash = "sha256-LSy6kNjwCfu/S8GYxa5LppZnL2CpD4frPv7tWO69O5Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b6aab9a2d2eaf3f2f0213e0708aaa577e6bc2073 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/Obsidian-Bolt";
        };
    }
);
    "border" = (
    let
        baseUrl = "https://github.com/Akifyss/obsidian-border.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "border";
        version = "315fc006e7fb16bb288c3af2cf8920137e156ca1";
        outputHash = "sha256-e/NNybvstWRhV8ctUiUYXRDetlTCobqxmiCbNXknTF4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=315fc006e7fb16bb288c3af2cf8920137e156ca1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Akifyss/obsidian-border";
        };
    }
);
    "borealis" = (
    let
        baseUrl = "https://github.com/juanchiparra/obsidian-borealis.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "borealis";
        version = "16c207a80bf0f8c1a9f3563e90e08cedc5bade17";
        outputHash = "sha256-usNQv1WHEE8BAVZPyIta62dP+w8bE2n/T7VIA6eKG90=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=16c207a80bf0f8c1a9f3563e90e08cedc5bade17 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/juanchiparra/obsidian-borealis";
        };
    }
);
    "bossidian" = (
    let
        baseUrl = "https://github.com/BossElijah/bossidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "bossidian";
        version = "8be153b4aac5de479eaf1cc0182fe78c14723cfc";
        outputHash = "sha256-H3eFtKGQ4vzKPZv20dsQKgscZVsBdWKl+BQfX9+8Oc4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8be153b4aac5de479eaf1cc0182fe78c14723cfc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/BossElijah/bossidian";
        };
    }
);
    "brainhack" = (
    let
        baseUrl = "https://github.com/Spekulucius/obsidian-brainhack.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "brainhack";
        version = "dc38adfd3fb6576cebfb0a46e6be0a5bd0309fe5";
        outputHash = "sha256-T9WVMN1bPVr8Ggm1GJJ4XLdgz2Mf/M93qWBdPAbTGsg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=dc38adfd3fb6576cebfb0a46e6be0a5bd0309fe5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Spekulucius/obsidian-brainhack";
        };
    }
);
    "brutalism" = (
    let
        baseUrl = "https://github.com/abrahambahez/Brutalism.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "brutalism";
        version = "6eab4ba75f4d3e41c1e21656de8935a252f9b39b";
        outputHash = "sha256-n2wdtsaLpe+cfJDl6QYkblfCPR5iUvTKG8MyVYbqrk0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6eab4ba75f4d3e41c1e21656de8935a252f9b39b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/abrahambahez/Brutalism";
        };
    }
);
    "brutalist" = (
    let
        baseUrl = "https://github.com/DuckTapeKiller/Brutalist.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "brutalist";
        version = "d4fb17cefd64b2052769940273150f85aab85c91";
        outputHash = "sha256-Z2E28QTOMonhA4MRgShGaXDEmFFJ9PlecfakfxOIlIc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d4fb17cefd64b2052769940273150f85aab85c91 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/DuckTapeKiller/Brutalist";
        };
    }
);
    "bubble-space" = (
    let
        baseUrl = "https://github.com/Emrie-Candera/Bubble-Space-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "bubble-space";
        version = "0e85a392a55fa0ef91f12108523d4ce8757e17e6";
        outputHash = "sha256-Rqi75Yr4ob+8etmpGytxy4G4h2NSUU5qcybMiemHfH8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0e85a392a55fa0ef91f12108523d4ce8757e17e6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Emrie-Candera/Bubble-Space-Theme";
        };
    }
);
    "buena-vista" = (
    let
        baseUrl = "https://github.com/oqipoDev/buena-vista-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "buena-vista";
        version = "cd79bb5ca7dc605553609456131076e4cc0e3899";
        outputHash = "sha256-/tDW+hCVLbdHKdeGUj8sERxT+dSXIdw24ESfiWxEVQE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cd79bb5ca7dc605553609456131076e4cc0e3899 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/oqipoDev/buena-vista-obsidian";
        };
    }
);
    "camena" = (
    let
        baseUrl = "https://github.com/splendidissimemendax/Camena.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "camena";
        version = "cddfaf272513c4f40e634060116339e325c533ac";
        outputHash = "sha256-4tVTWbMJ481L60avmJ3in0XSZyw434s5X+1uMer1PCk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cddfaf272513c4f40e634060116339e325c533ac --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/splendidissimemendax/Camena";
        };
    }
);
    "carbon" = (
    let
        baseUrl = "https://github.com/vhbelvadi/obsidian-carbon.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "carbon";
        version = "4b2d912a6538f5500ca586382c38e6dc08cdde84";
        outputHash = "sha256-LfqGy7a8G59Di8L3jn1FQ2hmOIAEi2/o/KqVrO5UFME=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4b2d912a6538f5500ca586382c38e6dc08cdde84 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vhbelvadi/obsidian-carbon";
        };
    }
);
    "cardstock" = (
    let
        baseUrl = "https://github.com/cassidoo/cardstock.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cardstock";
        version = "ee96631945e732d34ce7aa80dd2643681cdc77be";
        outputHash = "sha256-5jPwRw9bPZIQlh/obT0NC4cZSyi3mcOtELnkrKA13+g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ee96631945e732d34ce7aa80dd2643681cdc77be --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/cassidoo/cardstock";
        };
    }
);
    "carnelian" = (
    let
        baseUrl = "https://github.com/gracejoseph1236/obsidian-carnelian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "carnelian";
        version = "c57836116bda059b89655d0d5bdc6a2f2f7edc08";
        outputHash = "sha256-sAZYFewYapK7rxTv3rcV1AjCvhjABRUCw/m9jvsBcfE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c57836116bda059b89655d0d5bdc6a2f2f7edc08 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Piglet1236\", \"minAppVersion\": \"0.16.0\", \"name\": \"Carnelian\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/gracejoseph1236/obsidian-carnelian";
        };
    }
);
    "carpe-noctem" = (
    let
        baseUrl = "https://github.com/operator-axel/obsdian_theme--Carpe_Noctem.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "carpe-noctem";
        version = "e6f2e037e44143c0198a466963cd2fd372fa45a5";
        outputHash = "sha256-8tNh0Vzcsi2boBltzYQyAV+ccLutkNYacOxiqtWOosE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e6f2e037e44143c0198a466963cd2fd372fa45a5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Alex B\", \"minAppVersion\": \"0.16.0\", \"name\": \"Carpe Noctem\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/operator-axel/obsdian_theme--Carpe_Noctem";
        };
    }
);
    "catppuccin" = (
    let
        baseUrl = "https://github.com/catppuccin/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "catppuccin";
        version = "3cfbdf9b0864929b9ede3fa092a8bc39945dfa8f";
        outputHash = "sha256-ec3M9cRKAjuH308hiExB1cpVN9kO6eQME+U4mFtwKlI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3cfbdf9b0864929b9ede3fa092a8bc39945dfa8f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/catppuccin/obsidian";
        };
    }
);
    "celestial-night" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/Obsidian-Celestial-Night-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "celestial-night";
        version = "28517c4d460ef7d68bcf69e14f5b69fded9acf64";
        outputHash = "sha256-1BZD9Y3f8N22SiTNeFZS5rJoKjJX/EjwhKcg2CCHALk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=28517c4d460ef7d68bcf69e14f5b69fded9acf64 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/Obsidian-Celestial-Night-Theme";
        };
    }
);
    "charcoal" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-Charcoal.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "charcoal";
        version = "80447efe8c3a2f11954cf48cb34776154f173c5d";
        outputHash = "sha256-/fbvssqasdguqbI4MTY1Uzl0VDQuLWVVKrRp0ytz5BA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=80447efe8c3a2f11954cf48cb34776154f173c5d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"Charcoal\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-Charcoal";
        };
    }
);
    "cobalt-peacock" = (
    let
        baseUrl = "https://github.com/dpavaoman/cobalt-peacock-obmd.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cobalt-peacock";
        version = "3b0686ea84228566649c4273bfa7147bfabe2943";
        outputHash = "sha256-RhMbC+PhwsyUZ79enET5PkLB9i0UFghsJcnEcalLwJw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3b0686ea84228566649c4273bfa7147bfabe2943 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dpavaoman/cobalt-peacock-obmd";
        };
    }
);
    "coffee" = (
    let
        baseUrl = "https://github.com/regawaras/Coffee.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "coffee";
        version = "403666f3df96a2ee8d492c421402493a9f9699af";
        outputHash = "sha256-qNAxXZ6HHI6rVV35h1ICvwxsduQSIezDWxgDBGoBGXA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=403666f3df96a2ee8d492c421402493a9f9699af --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/regawaras/Coffee";
        };
    }
);
    "colored-candy" = (
    let
        baseUrl = "https://github.com/Erallie/colored-candy.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "colored-candy";
        version = "24d47c1c5ae6748ae94a14d794764c4191aa6a65";
        outputHash = "sha256-RfOeDn/1ySjRwT2ruIlZmehSg5MyIzuOetfOFLX9MJ8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=24d47c1c5ae6748ae94a14d794764c4191aa6a65 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Erallie/colored-candy";
        };
    }
);
    "comfort" = (
    let
        baseUrl = "https://github.com/Carrie999/comfort.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "comfort";
        version = "a982ac4be4e4e2f24760540018609a9b8e0a56a1";
        outputHash = "sha256-8Bc23QoEd5O2ssMNG/6pmdbFt9B9r093ji0CodeLQzk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a982ac4be4e4e2f24760540018609a9b8e0a56a1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Carrie999/comfort";
        };
    }
);
    "comfort-dark" = (
    let
        baseUrl = "https://github.com/Ooopz/obsidianmd-theme-comfort-dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "comfort-dark";
        version = "9c3fceddf0624ef61f79bf5156fc03a8ddf9625c";
        outputHash = "sha256-fU86liqzv33dav6xXJi+mPy36idFT2wQS3D9udf08Zw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9c3fceddf0624ef61f79bf5156fc03a8ddf9625c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Ooopz/obsidianmd-theme-comfort-dark";
        };
    }
);
    "comfort-smooth" = (
    let
        baseUrl = "https://github.com/sparklau/comfort-smooth.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "comfort-smooth";
        version = "252689118c0ec540c09a56197a31f3fa80ef7fd6";
        outputHash = "sha256-aWaxD72G6fiNCgo7AsRxmril6b29EKCkYy73k88Y34Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=252689118c0ec540c09a56197a31f3fa80ef7fd6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Spark\", \"minAppVersion\": \"0.16.0\", \"name\": \"Comfort Smooth\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sparklau/comfort-smooth";
        };
    }
);
    "comfort-color-dark" = (
    let
        baseUrl = "https://github.com/obsidian-ezs/obsidian-comfort-color-dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "comfort-color-dark";
        version = "e92afeabb6c5844c0ad772cbba9cb1772f295486";
        outputHash = "sha256-/3TG1sZ3kvNGG0Ks6JtTwk63O6j2fvSXlY705f+A+d8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e92afeabb6c5844c0ad772cbba9cb1772f295486 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"ezs\", \"minAppVersion\": \"0.16.0\", \"name\": \"Comfort color dark\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/obsidian-ezs/obsidian-comfort-color-dark";
        };
    }
);
    "composer" = (
    let
        baseUrl = "https://github.com/vran-dev/obsidian-composer.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "composer";
        version = "c3750dfb4f33617844d259ab2f5fe6b56f77d0ff";
        outputHash = "sha256-7Rh8D9oVrQ5CBQNZf2T5TDNX8Nt4+if8H2lCAsTTLpU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c3750dfb4f33617844d259ab2f5fe6b56f77d0ff --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vran-dev/obsidian-composer";
        };
    }
);
    "consolas" = (
    let
        baseUrl = "https://github.com/pinei/obsidian-consolas-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "consolas";
        version = "3ba4140caa2325a573ec082d3cc293c3e01e726b";
        outputHash = "sha256-I1skEZC5RSeAg9BlxFSviVIt+2rcPrdC3MLdBvFD9lM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3ba4140caa2325a573ec082d3cc293c3e01e726b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/pinei/obsidian-consolas-theme";
        };
    }
);
    "cosmical" = (
    let
        baseUrl = "https://github.com/M-Torrus/obsidian-cosmical-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cosmical";
        version = "53cc702d9d340b13cddeb066a55d2fee8816d886";
        outputHash = "sha256-j2k6azBbTXGezAuNc7v9gnGERKJEw+unuEKnbXd/uv4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=53cc702d9d340b13cddeb066a55d2fee8816d886 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/M-Torrus/obsidian-cosmical-theme";
        };
    }
);
    "covert" = (
    let
        baseUrl = "https://github.com/schrunchee/obsidian-covert-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "covert";
        version = "c246a5b0712f58ec6adb7a8275ef54f76e23b1c4";
        outputHash = "sha256-FXe6XZn9S2ET5fp2NPjDpUZoFJIIymEuENPdEWMuNOk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c246a5b0712f58ec6adb7a8275ef54f76e23b1c4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/schrunchee/obsidian-covert-theme";
        };
    }
);
    "creme-brulee" = (
    let
        baseUrl = "https://github.com/anareaty/creme-brulee-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "creme-brulee";
        version = "a4464644b5c2471d4945fa33fbefb784fe4acedf";
        outputHash = "sha256-ygOjU1hFbfcMWohTEOgLOfW+JqfBFK7R6HsM8IBUreU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a4464644b5c2471d4945fa33fbefb784fe4acedf --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/anareaty/creme-brulee-obsidian-theme";
        };
    }
);
    "cupertino" = (
    let
        baseUrl = "https://github.com/aaaaalexis/obsidian-cupertino.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cupertino";
        version = "fcaca5c357fa1eabfc24625512b3baa2e4734eea";
        outputHash = "sha256-Ddud37ub8IR3XgbE1cSNQLO6IDqIJDRcd1K4IX4cuy4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fcaca5c357fa1eabfc24625512b3baa2e4734eea --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/aaaaalexis/obsidian-cupertino";
        };
    }
);
    "cyber-glow" = (
    let
        baseUrl = "https://github.com/ThePharaohArt/Obsidian-CyberGlow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cyber-glow";
        version = "9904be36607feb19601541b23944f9e663ee7219";
        outputHash = "sha256-0/OaYuvxAuq6nd8fWTGdyK2vW1N6cxzI2d0h0hFWv3Q=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9904be36607feb19601541b23944f9e663ee7219 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ThePharaohArt/Obsidian-CyberGlow";
        };
    }
);
    "cybertron" = (
    let
        baseUrl = "https://github.com/nickmilo/Cybertron.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cybertron";
        version = "948504a25930009cd26d9b846bf0e1a1aca7b768";
        outputHash = "sha256-iCH6nb3Khw5iiJl04afYj0gHPR0WaEoCKn4H2TmarZY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=948504a25930009cd26d9b846bf0e1a1aca7b768 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/nickmilo/Cybertron";
        };
    }
);
    "cybertron-shifted" = (
    let
        baseUrl = "https://github.com/JorgEdmundo/cybertron-shifted.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "cybertron-shifted";
        version = "9df48265547f5ff034c4c43765c484a96b67fc09";
        outputHash = "sha256-To9w/Uf3xvD/OQ2QbM+mJ+EiJSUOOb0AhtwdIu7/+/8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9df48265547f5ff034c4c43765c484a96b67fc09 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/JorgEdmundo/cybertron-shifted";
        };
    }
);
    "dark-castle" = (
    let
        baseUrl = "https://github.com/scottgriv/Dark-Castle-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dark-castle";
        version = "8d6c412624b7de443110d09f715b4ecb48219093";
        outputHash = "sha256-lR8YJ6Aze3SjPhJIuf+q6y6tmEVMiHBcJgs5Hv7rsO8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8d6c412624b7de443110d09f715b4ecb48219093 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/scottgriv/Dark-Castle-Obsidian";
        };
    }
);
    "dark-clarity" = (
    let
        baseUrl = "https://github.com/chenbihao/obsidian-theme-dark-clarity.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dark-clarity";
        version = "24f699efed5fc5a2c86e7bb4d29e9336d80fb465";
        outputHash = "sha256-J1Yc0binUb0LoViT6MjRGqfVnzb8vecdpgruEE0/UWQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=24f699efed5fc5a2c86e7bb4d29e9336d80fb465 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/chenbihao/obsidian-theme-dark-clarity";
        };
    }
);
    "dark-graphite" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-Graphite.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dark-graphite";
        version = "b828a58e05f905e3160316b6bbc255509edb7437";
        outputHash = "sha256-tdu6qN0fe5867rf5XLMQqDxHdZuAEZnGjALVb2f8nX4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b828a58e05f905e3160316b6bbc255509edb7437 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"Dark Graphite\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-Graphite";
        };
    }
);
    "dark-graphite-pie" = (
    let
        baseUrl = "https://github.com/ryjjin/Obsidian-Dark-Graphite-Pie-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dark-graphite-pie";
        version = "8dac99b553bb24b8d856e20d8769f4417b905570";
        outputHash = "sha256-WwulCGccOnQltBlRF032OoohH3HQf5WPLSm8fu3Npc4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8dac99b553bb24b8d856e20d8769f4417b905570 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"kitchenrunner\", \"minAppVersion\": \"0.16.0\", \"name\": \"Dark Graphite Pie\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ryjjin/Obsidian-Dark-Graphite-Pie-theme";
        };
    }
);
    "dark-moss" = (
    let
        baseUrl = "https://github.com/sergey900553/obsidian_githublike_theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dark-moss";
        version = "70695e748d0da568874be8e922b86aa46ade6e4b";
        outputHash = "sha256-+gefx4fETDRCGTfyxZ9NDz4Z1beLg4d8Iyaqca2mfzg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=70695e748d0da568874be8e922b86aa46ade6e4b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sergey900553/obsidian_githublike_theme";
        };
    }
);
    "dark-ember" = (
    let
        baseUrl = "https://github.com/miz-i/Obsidian-theme-DarkEmber.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dark-ember";
        version = "e2196d34b362e05f617dbfcf5ec2ec603e7e7876";
        outputHash = "sha256-qBnBNDHN7f70gUR5BIA+4CLUMgQYNspIiSkucH7Q5fo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e2196d34b362e05f617dbfcf5ec2ec603e7e7876 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/miz-i/Obsidian-theme-DarkEmber";
        };
    }
);
    "darkyan" = (
    let
        baseUrl = "https://github.com/johackim/obsidian-darkyan.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "darkyan";
        version = "e47fb0edff00f90d0b9dfdb96696b4c2c142b9cb";
        outputHash = "sha256-4PBbqns07oBUIv5gVrbqf0vFWz/vumKxoDyA2YzxnyA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e47fb0edff00f90d0b9dfdb96696b4c2c142b9cb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/johackim/obsidian-darkyan";
        };
    }
);
    "dawn" = (
    let
        baseUrl = "https://github.com/ds-package/Dawn.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dawn";
        version = "31ef01403a5a4bdf9b1fd0c6ac96cceadf40bec6";
        outputHash = "sha256-JsfzsJg51cM2Oyh9pMpevsAKHEBOoGc1kclXltq5muA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=31ef01403a5a4bdf9b1fd0c6ac96cceadf40bec6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ds-package/Dawn";
        };
    }
);
    "dayspring" = (
    let
        baseUrl = "https://github.com/erykwalder/dayspring-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dayspring";
        version = "cbc604e4308db470994aa5fa1ac86ba64b850b93";
        outputHash = "sha256-4RjJZbYPLVEz04395ATkw+xAwU5Uqq33fs/vUptboAg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cbc604e4308db470994aa5fa1ac86ba64b850b93 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/erykwalder/dayspring-theme";
        };
    }
);
    "dedication" = (
    let
        baseUrl = "https://github.com/modigaphemelo/Dedication-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dedication";
        version = "7c840163f8ce73d1423b3f2403cb1e357902de88";
        outputHash = "sha256-tIqmvwU37+HXDQ3Nn8tYRRz4P8MVrT3GwTbY4Hf/Ysk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7c840163f8ce73d1423b3f2403cb1e357902de88 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/modigaphemelo/Dedication-obsidian-theme";
        };
    }
);
    "dedication-2" = (
    let
        baseUrl = "https://github.com/modigaphemelo/Dedication-2-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dedication-2";
        version = "778076c5b099f98b43676c27d1a45a27301a0e8f";
        outputHash = "sha256-6ICa3XtMC9UXvVfzsscPKR4f1NbRYEQFX/lEJHf/bjI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=778076c5b099f98b43676c27d1a45a27301a0e8f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/modigaphemelo/Dedication-2-Obsidian-Theme";
        };
    }
);
    "dekurai" = (
    let
        baseUrl = "https://github.com/sergey900553/obsidian_dekurai_theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dekurai";
        version = "9ab1500c6093dec54b04f2cd4ef674a66124175c";
        outputHash = "sha256-IwNkCNmmSxXgFKL01WNq37nBTmdJDtHRCV+mj/KM29Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9ab1500c6093dec54b04f2cd4ef674a66124175c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sergey900553/obsidian_dekurai_theme";
        };
    }
);
    "desserts" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-desserts.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "desserts";
        version = "909252b35d8accdc7440352a341355b7aa2c8532";
        outputHash = "sha256-YBu4b728xld1jPhRk+3eWYFjsGlcGQ6Gnq/8utC3JZ0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=909252b35d8accdc7440352a341355b7aa2c8532 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-desserts";
        };
    }
);
    "discordian" = (
    let
        baseUrl = "https://github.com/radekkozak/discordian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "discordian";
        version = "bcb8cf40681f7a7e14728c4dc472a6edc7431f3b";
        outputHash = "sha256-+0BHt3Ej4UXTV1GNT94Pkjqd7rU2665cARbTijTm95w=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=bcb8cf40681f7a7e14728c4dc472a6edc7431f3b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"radekkozak\", \"minAppVersion\": \"0.16.0\", \"name\": \"Discordian\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/radekkozak/discordian";
        };
    }
);
    "dracula-lyt" = (
    let
        baseUrl = "https://github.com/xRyul/ObsidianMD_Dracula_x_LYT.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dracula-lyt";
        version = "ed43026f30de61897a4529cd161e4470e7d10b9b";
        outputHash = "sha256-hCuo7xZCdAbr/YrF5v+F/XYnVou+4b76MwcrjSUziZs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ed43026f30de61897a4529cd161e4470e7d10b9b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"xRyul\", \"minAppVersion\": \"0.16.0\", \"name\": \"Dracula + LYT\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/xRyul/ObsidianMD_Dracula_x_LYT";
        };
    }
);
    "dracula-gemini" = (
    let
        baseUrl = "https://github.com/clbn/dracula-gemini.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dracula-gemini";
        version = "2ead51a593d63e45096d1c6e27d12d742ea328d5";
        outputHash = "sha256-Y2zSWqYTbqVO/INz6pbCmYVCF7A/Xj8Ba+LjhjN/Pio=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2ead51a593d63e45096d1c6e27d12d742ea328d5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/clbn/dracula-gemini";
        };
    }
);
    "dracula-official" = (
    let
        baseUrl = "https://github.com/dracula/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dracula-official";
        version = "a48370320ae150b6ac34a90305f9b781f33bec5d";
        outputHash = "sha256-MHle3rraK0735/3wvSNjTxJFXzGZOKT/ml1niWv+q1I=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a48370320ae150b6ac34a90305f9b781f33bec5d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dracula/obsidian";
        };
    }
);
    "dracula-plus" = (
    let
        baseUrl = "https://github.com/saket61195/Dracula_obsidian_theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dracula-plus";
        version = "491bff067e128d660abddcf082f353b07e2f35b7";
        outputHash = "sha256-dFO2mMfCpacldvGKFbAVVQW2kzcrhtQ0XhfBJv1ENKQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=491bff067e128d660abddcf082f353b07e2f35b7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/saket61195/Dracula_obsidian_theme";
        };
    }
);
    "dracula-slim" = (
    let
        baseUrl = "https://github.com/bLaCkwEw/Dracula-Slim.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dracula-slim";
        version = "549b3a581bb8bbcb50ed4090554d5380e56b609c";
        outputHash = "sha256-tUR+v+mUddc0co6GI79Dr0W7TBo0xCwYUl7vqGVXsNI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=549b3a581bb8bbcb50ed4090554d5380e56b609c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bLaCkwEw\", \"minAppVersion\": \"0.16.0\", \"name\": \"Dracula Slim\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bLaCkwEw/Dracula-Slim";
        };
    }
);
    "dracula-for-obsidian" = (
    let
        baseUrl = "https://github.com/jarodise/Dracula-for-Obsidian.md.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dracula-for-obsidian";
        version = "947258eb9dc3ebb31e8724280d75925c6b2b6c11";
        outputHash = "sha256-30sJIx2zwcD/pm7VeMwD1Qwb4Mc5ejxFGD2g8BgoQU4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=947258eb9dc3ebb31e8724280d75925c6b2b6c11 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"jarodise\", \"minAppVersion\": \"0.16.0\", \"name\": \"Dracula for Obsidian\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/jarodise/Dracula-for-Obsidian.md";
        };
    }
);
    "duality" = (
    let
        baseUrl = "https://github.com/CascadeThemes/Duality.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "duality";
        version = "9f61604c17d308056261cea08a2c525a6ff46a9d";
        outputHash = "sha256-sY/qOWi00mHgqbDCir0kj+zk/2uhAdP4tL5bFnu/oBk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9f61604c17d308056261cea08a2c525a6ff46a9d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/CascadeThemes/Duality";
        };
    }
);
    "dune" = (
    let
        baseUrl = "https://github.com/Jopp-gh/Obsidian-Dune84.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dune";
        version = "42a2fb99e9d3fd5e64984004dddcec8b51cd9a8a";
        outputHash = "sha256-R0CFfkestvq6B4sHHL8kqMIUVE0I+7T5ER+SCpi6PIo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=42a2fb99e9d3fd5e64984004dddcec8b51cd9a8a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Jopp-gh/Obsidian-Dune84";
        };
    }
);
    "dunite" = (
    let
        baseUrl = "https://github.com/Ch0live/dunite.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dunite";
        version = "7a39794fd1cb421ca1f9f868fa2f3065c25cc900";
        outputHash = "sha256-63iYG+vFJ2bP5Xw+SFKSEggtvEehb7wT1N3pty8UJ4s=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7a39794fd1cb421ca1f9f868fa2f3065c25cc900 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Ch0live/dunite";
        };
    }
);
    "dynamic-color" = (
    let
        baseUrl = "https://github.com/rodydavis/obsidian-dynamic-color.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dynamic-color";
        version = "8f8dc155640d06617cb1d6c80a29405db3d79df8";
        outputHash = "sha256-EJsPw7rXhBJKzeesjs3bGSoimQFcrcOAeDyk0cmZ4JY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8f8dc155640d06617cb1d6c80a29405db3d79df8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/rodydavis/obsidian-dynamic-color";
        };
    }
);
    "ebullientworks" = (
    let
        baseUrl = "https://github.com/ebullient/obsidian-theme-ebullientworks.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ebullientworks";
        version = "56431414f0a8a073435e61cb9e2f6c16c97e7f8e";
        outputHash = "sha256-j93oSQQVysMwNx69S3z1w6P6u0czYQoJ6cAMSNx/OSs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=56431414f0a8a073435e61cb9e2f6c16c97e7f8e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ebullient/obsidian-theme-ebullientworks";
        };
    }
);
    "eldritch" = (
    let
        baseUrl = "https://github.com/eldritch-theme/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "eldritch";
        version = "b0ff0121655d41d249420bc6d94f455b6044cf6b";
        outputHash = "sha256-qGXKyS6eC31Rz/9czLAdtuj2ZEk4EQIYb8Dyc1EB/98=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b0ff0121655d41d249420bc6d94f455b6044cf6b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/eldritch-theme/obsidian";
        };
    }
);
    "elegance" = (
    let
        baseUrl = "https://github.com/Victologo/elegance-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "elegance";
        version = "3895c6130fa363921a9d6a74b3648fb7aa85a49b";
        outputHash = "sha256-wRhSgsM6ZiEBTO5f4+RFtUz9NF12M9n1xmj/zLh5JeY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3895c6130fa363921a9d6a74b3648fb7aa85a49b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Victologo/elegance-theme";
        };
    }
);
    "emerald" = (
    let
        baseUrl = "https://github.com/gracejoseph1236/obsidian-emerald.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "emerald";
        version = "66e0fcacb965892725376254748f52336f37e157";
        outputHash = "sha256-8M908OsuunU79K4E4RZJohqLC0tNLlRXpU8URtr/zso=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=66e0fcacb965892725376254748f52336f37e157 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Piglet1236\", \"minAppVersion\": \"0.16.0\", \"name\": \"Emerald\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/gracejoseph1236/obsidian-emerald";
        };
    }
);
    "emerald-echo" = (
    let
        baseUrl = "https://github.com/MalcolmMielle/Emerald-Echo.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "emerald-echo";
        version = "52aa699f3bcfdf2e78b5bdefce51e138694a6cc7";
        outputHash = "sha256-Kmjf5x1n5oP6vfEM/j9dpIqmfPUBKJZU/bYiK+c1Om0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=52aa699f3bcfdf2e78b5bdefce51e138694a6cc7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/MalcolmMielle/Emerald-Echo";
        };
    }
);
    "encore" = (
    let
        baseUrl = "https://github.com/Carbonateb/obsidian-encore-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "encore";
        version = "5365650dceaa5e3ae545017253d6f40316d26755";
        outputHash = "sha256-EVTqidi8ej4Z69FLxlKfnSVMgF3MuVPu0O4imAjK9M0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5365650dceaa5e3ae545017253d6f40316d26755 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Carbonateb/obsidian-encore-theme";
        };
    }
);
    "enhanced-file-explorer-tree" = (
    let
        baseUrl = "https://github.com/LennZone/enhanced-file-explorer-tree.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "enhanced-file-explorer-tree";
        version = "1b586397eedb5febcc08522e4353072b1d01f171";
        outputHash = "sha256-tNWvKFwANzWrwi6poNC9lG8E611+1DUYD01O42f+b4o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1b586397eedb5febcc08522e4353072b1d01f171 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/LennZone/enhanced-file-explorer-tree";
        };
    }
);
    "ethereon" = (
    let
        baseUrl = "https://github.com/ethereontheme/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ethereon";
        version = "7030997a271747273b8908a701dc58d8ced9e0ee";
        outputHash = "sha256-chgqZ0Jhb9S7gfndrvdXVQuoVuieMHszNld4zFRpFTA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7030997a271747273b8908a701dc58d8ced9e0ee --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ethereontheme/obsidian";
        };
    }
);
    "everblush" = (
    let
        baseUrl = "https://github.com/Everblush/Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "everblush";
        version = "b2b4a677734cf05b38bb33e573566bc602694d20";
        outputHash = "sha256-NCDrMOo0vRspb+gb6O6gAtfElXgqLkwLEsVc9QcWLXE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b2b4a677734cf05b38bb33e573566bc602694d20 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Mangeshrex\", \"minAppVersion\": \"0.16.0\", \"name\": \"Everblush\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Everblush/Obsidian";
        };
    }
);
    "everforest" = (
    let
        baseUrl = "https://github.com/0xGlitchbyte/obsidian_everforest.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "everforest";
        version = "425a71d0e3eda86024b5201d94a874ed2360f250";
        outputHash = "sha256-uP2pKe7Rjnz1PzUWjsXHWADi3/2ihyIc7qzod/yp0tk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=425a71d0e3eda86024b5201d94a874ed2360f250 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"MrGlitchByte\", \"minAppVersion\": \"0.16.0\", \"name\": \"Everforest\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/0xGlitchbyte/obsidian_everforest";
        };
    }
);
    "everforest-enchanted" = (
    let
        baseUrl = "https://github.com/FireIsGood/obsidian-everforest-enchanted.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "everforest-enchanted";
        version = "8e1147a9d3cfdcbe72b31e7f177c55e334fefb7c";
        outputHash = "sha256-UFdE8beCyymdMcnTyt295uGePcH2dbiYrkAq84FIkmU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8e1147a9d3cfdcbe72b31e7f177c55e334fefb7c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/FireIsGood/obsidian-everforest-enchanted";
        };
    }
);
    "everforest-spruce" = (
    let
        baseUrl = "https://github.com/vupdivup/obsidian-everforest-spruce.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "everforest-spruce";
        version = "30de8c1b004a441b3f3f56d3d4eb159e0c21a619";
        outputHash = "sha256-nUL2lcUTgmbhP58KjFls1Qnz9r8ZUGqepOu/eT/sGZs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=30de8c1b004a441b3f3f56d3d4eb159e0c21a619 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vupdivup/obsidian-everforest-spruce";
        };
    }
);
    "evergreen-shadow" = (
    let
        baseUrl = "https://github.com/Quinta0/Evergreen-Shadow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "evergreen-shadow";
        version = "e85552a86ffeb20b43d742c45d7de24f2df6125c";
        outputHash = "sha256-u7M+WMnC5KpGSfHtHLlekfzefcZ5yyS1zNnnLipIY/0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e85552a86ffeb20b43d742c45d7de24f2df6125c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Evergreen-Shadow";
        };
    }
);
    "evil-red" = (
    let
        baseUrl = "https://github.com/tu2-atmanand/EvilRed-ObsidianTheme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "evil-red";
        version = "d72f096c673719360bc0278fe89e5492a7004e47";
        outputHash = "sha256-SpFdobvqJpswxSCtWWg5+AptZeQqLvHCUnpuN5QhkMg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d72f096c673719360bc0278fe89e5492a7004e47 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tu2-atmanand/EvilRed-ObsidianTheme";
        };
    }
);
    "faded" = (
    let
        baseUrl = "https://github.com/JoshKasap/Obsidian-Faded-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "faded";
        version = "4dc3b9ba1abe8fb150873bf9c55a7e6d410214a2";
        outputHash = "sha256-TuXHilC+g2VeBFfrf3GloNrbaF/IgC+Speqw2jJDDss=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4dc3b9ba1abe8fb150873bf9c55a7e6d410214a2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/JoshKasap/Obsidian-Faded-Theme";
        };
    }
);
    "fancy-a-story" = (
    let
        baseUrl = "https://github.com/ElsaTam/obsidian-fancy-a-story.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "fancy-a-story";
        version = "e3b1fd473af34176ff4c2938a2145acc1e8da19d";
        outputHash = "sha256-dvYA6q54fI4zYPWsUv5mKInbmA+xfdDs/njrh/o33As=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e3b1fd473af34176ff4c2938a2145acc1e8da19d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ElsaTam/obsidian-fancy-a-story";
        };
    }
);
    "fast-ppuccin" = (
    let
        baseUrl = "https://github.com/LostViking09/obsidian-fastppuccin.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "fast-ppuccin";
        version = "d3f715c7713f39e110090bef819de8695e5c71db";
        outputHash = "sha256-LsdsG76a33nB3BRMP+5itH2kM3dWcEaQd6p+LVj7frY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d3f715c7713f39e110090bef819de8695e5c71db --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/LostViking09/obsidian-fastppuccin";
        };
    }
);
    "feather" = (
    let
        baseUrl = "https://github.com/zfmohammed/obsidian-feather.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "feather";
        version = "ea36c74bd5393f1eb62b2daee2371aa3c9234908";
        outputHash = "sha256-Wk7aSXonfIYbXJGywCBuAeGG6OGx4U9v/vsYRpxQ6FA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ea36c74bd5393f1eb62b2daee2371aa3c9234908 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zfmohammed/obsidian-feather";
        };
    }
);
    "firefly" = (
    let
        baseUrl = "https://github.com/lazercaveman/obsidian-firefly-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "firefly";
        version = "7f712746a3a40e0a1e79432a781a7b7e8c0b897c";
        outputHash = "sha256-R44ltkD1xJnJPN9FWYLhWIuP1BPnbVI1ah5wFN0bRQc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7f712746a3a40e0a1e79432a781a7b7e8c0b897c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Ali Soueidan\", \"minAppVersion\": \"0.16.0\", \"name\": \"Firefly\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lazercaveman/obsidian-firefly-theme";
        };
    }
);
    "flat-cap" = (
    let
        baseUrl = "https://github.com/cheycron/flatcap-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "flat-cap";
        version = "348f3f63bb72e57f4c13762f00d56926931af0b5";
        outputHash = "sha256-R3ywBHMVak6dEWzjJXC/hWj2x+5Kmlu+aMv6Nt2Uw9Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=348f3f63bb72e57f4c13762f00d56926931af0b5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/cheycron/flatcap-obsidian";
        };
    }
);
    "flexoki" = (
    let
        baseUrl = "https://github.com/kepano/flexoki-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "flexoki";
        version = "527685bcf3766d6813b20875832d8fae0d5c89d9";
        outputHash = "sha256-eI9N49nrJfQITzyvnzxHFjk4a7ME+KCEB3j93MsOiZo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=527685bcf3766d6813b20875832d8fae0d5c89d9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kepano/flexoki-obsidian";
        };
    }
);
    "flexoki-warm" = (
    let
        baseUrl = "https://github.com/ofalvai/flexoki-warm.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "flexoki-warm";
        version = "b58e71187b519b2c668e746041e4aae1b6ec433d";
        outputHash = "sha256-b+eo4THCjC0UYTONtKTbBbuPiWNi85JWV9uN3Fmwn9o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b58e71187b519b2c668e746041e4aae1b6ec433d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ofalvai/flexoki-warm";
        };
    }
);
    "focus" = (
    let
        baseUrl = "https://github.com/mProjectsCode/obsidian-focus-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "focus";
        version = "08fd1959d88c7eaac29202e66c56c78a13cd9f17";
        outputHash = "sha256-Phn/izz2dnQPvISv+CTt8oLs8bJHbDVFzSHEdWOu55Q=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=08fd1959d88c7eaac29202e66c56c78a13cd9f17 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mProjectsCode/obsidian-focus-theme";
        };
    }
);
    "frost" = (
    let
        baseUrl = "https://github.com/drkpxl/Frost.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "frost";
        version = "7421406c64709af333e9df2025765f5819141a45";
        outputHash = "sha256-HEP3ik2ZI2nZf/yuuWWCmVjMaelYj/U3Rtu+05OerXU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7421406c64709af333e9df2025765f5819141a45 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/drkpxl/Frost";
        };
    }
);
    "fusion" = (
    let
        baseUrl = "https://github.com/zamsyt/obsidian-fusion.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "fusion";
        version = "e820139737556e891163bbeb0bf0d13d3b5f574c";
        outputHash = "sha256-mxFaFGvyzzTSFYUJpWbaoro3AXbyq2FAn+J9gkgWZWQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e820139737556e891163bbeb0bf0d13d3b5f574c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zamsyt/obsidian-fusion";
        };
    }
);
    "future" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/obsidian-future.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "future";
        version = "a9eb4062ee04f9140d18b2335d355b3d9c6c4e60";
        outputHash = "sha256-UuQvgWwr+JJIz9hbfi6akLEzGaOdVFiol3GPzIUu4oU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a9eb4062ee04f9140d18b2335d355b3d9c6c4e60 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/obsidian-future";
        };
    }
);
    "gdct" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-GDCT.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "gdct";
        version = "d39f7f29353b37afb282ee2bc550e54a1caf0f46";
        outputHash = "sha256-q2JGNUytT7Ak+AYok86FQNv0C3JZBq6qCwYiTI29qfg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d39f7f29353b37afb282ee2bc550e54a1caf0f46 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"GDCT\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-GDCT";
        };
    }
);
    "gdct-dark" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-GDCT_Dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "gdct-dark";
        version = "49f96c59aed45def188fc552eadff7b0f7526bda";
        outputHash = "sha256-qSmFeDJCu8w+lFjzozhE6xZqj5Ht3g61lDSzAkqwZdo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=49f96c59aed45def188fc552eadff7b0f7526bda --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"GDCT Dark\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-GDCT_Dark";
        };
    }
);
    "garden-gnome-adwaita-gtk" = (
    let
        baseUrl = "https://github.com/oqipoDev/garden-gnome-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "garden-gnome-adwaita-gtk";
        version = "95a752e64bda9966a2cc9d8b90965aabe62a97eb";
        outputHash = "sha256-c+id2Sx3oeQgtV/tRddH0uXGiL9PrDvSkJQoeqTAjBY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=95a752e64bda9966a2cc9d8b90965aabe62a97eb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/oqipoDev/garden-gnome-obsidian";
        };
    }
);
    "gastown" = (
    let
        baseUrl = "https://github.com/dogwaddle/obsidian-gastown-theme.md.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "gastown";
        version = "1198c3a59fd6f8ad731debcc4906b31aac78ffbd";
        outputHash = "sha256-sgP96ZsIdNjyxRx8l0J6ro5G6+FzzVmN6J9i2YhXZzQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1198c3a59fd6f8ad731debcc4906b31aac78ffbd --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"lizardmenfromspace\", \"minAppVersion\": \"0.16.0\", \"name\": \"Gastown\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dogwaddle/obsidian-gastown-theme.md";
        };
    }
);
    "git-hub-theme" = (
    let
        baseUrl = "https://github.com/krios2146/obsidian-theme-github.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "git-hub-theme";
        version = "07533eec45010ee0b3dc3da86a8846dc6d55c513";
        outputHash = "sha256-qp1sSN+xyFgWOyeH6lbZGjTmxWIiyR/H7pYaGYTBils=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=07533eec45010ee0b3dc3da86a8846dc6d55c513 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/krios2146/obsidian-theme-github";
        };
    }
);
    "git-hub-dhc" = (
    let
        baseUrl = "https://github.com/ScottKirvan/GitHubDHC.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "git-hub-dhc";
        version = "a88cdd16cbfc7b9271750cd302381f720095f6d1";
        outputHash = "sha256-fNPAO6DndeFtDpDhM/DNsnU682TNwCginy62huxPbCA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a88cdd16cbfc7b9271750cd302381f720095f6d1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ScottKirvan/GitHubDHC";
        };
    }
);
    "gitsidian" = (
    let
        baseUrl = "https://github.com/ismailgunacar/gitsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "gitsidian";
        version = "6db89d5506eb6ec9d78b47b0dbf5e24fa46897c3";
        outputHash = "sha256-jwJ0putEOpgD7t3plKiGE4cl2FPAiiruiDub0X2qEwU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6db89d5506eb6ec9d78b47b0dbf5e24fa46897c3 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Ish Gunacar\", \"minAppVersion\": \"0.16.0\", \"name\": \"Gitsidian\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ismailgunacar/gitsidian";
        };
    }
);
    "glass-robo" = (
    let
        baseUrl = "https://github.com/lorens-osman-dev/Glass-Robo.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "glass-robo";
        version = "ff9b08416ac20914d511189f2ab529ae6d8166a5";
        outputHash = "sha256-w+Oh6iPxh+wxGO+5IqnfceEzQS4YGbdfUoC0seXBtJE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ff9b08416ac20914d511189f2ab529ae6d8166a5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lorens-osman-dev/Glass-Robo";
        };
    }
);
    "golden-topaz" = (
    let
        baseUrl = "https://github.com/shaggyfeng/obsidian-Golden-Topaz-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "golden-topaz";
        version = "3eb6dae5091954fb80dd426917eddfc7a93885d3";
        outputHash = "sha256-a5cBHjLV8up2xYCx7Sdev/0TLouRP2EhMRv5xPR79sM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3eb6dae5091954fb80dd426917eddfc7a93885d3 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Mouth on Cloud\", \"minAppVersion\": \"0.16.0\", \"name\": \"Golden Topaz\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/shaggyfeng/obsidian-Golden-Topaz-theme";
        };
    }
);
    "green-nightmare" = (
    let
        baseUrl = "https://github.com/prradox/green-nightmare.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "green-nightmare";
        version = "57100b24298a65d6bd2476b8d4c0e69e46314acc";
        outputHash = "sha256-YZ1chyi9nmFUBR8aGv3eAuAH7FRt4KoDaGxi+FraPVo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=57100b24298a65d6bd2476b8d4c0e69e46314acc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/prradox/green-nightmare";
        };
    }
);
    "gummy-revived" = (
    let
        baseUrl = "https://github.com/WinnerWind/gummy-revived.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "gummy-revived";
        version = "057eccf30723ef62c5a1c0817a3fe188eb79e68a";
        outputHash = "sha256-r2z2CbSKJaUhB7Yv64aio42jWzS6V5/IrEdnfrzvya4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=057eccf30723ef62c5a1c0817a3fe188eb79e68a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/WinnerWind/gummy-revived";
        };
    }
);
    "hackthebox" = (
    let
        baseUrl = "https://github.com/golam71/obsidian-hackthebox.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hackthebox";
        version = "13978d65e8a9591478fd5869924b729da2e87ee5";
        outputHash = "sha256-FFlTk6m7pQL9OCb0/WNJxNnwcIoRLzTqk5X5hH7xB10=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=13978d65e8a9591478fd5869924b729da2e87ee5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/golam71/obsidian-hackthebox";
        };
    }
);
    "handwriting-kalam" = (
    let
        baseUrl = "https://github.com/kmranrg/obsidian-handwriting-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "handwriting-kalam";
        version = "b5c3ddd36b650cecc6ff81fbdcf2bce01752144e";
        outputHash = "sha256-x2WKBr26UJJEaagJJaBvDbB45xoaMbz2l4ICa25xjMo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b5c3ddd36b650cecc6ff81fbdcf2bce01752144e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kmranrg/obsidian-handwriting-theme";
        };
    }
);
    "harmonic" = (
    let
        baseUrl = "https://github.com/Thiews/Obsidian-Harmonic.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "harmonic";
        version = "4c6b45bbc2134e7e92a252bd6ef941fd5423859d";
        outputHash = "sha256-nrt0Ed8HpCJCL5Sdm3Y6/SXDkiOPOzj5NirgdmTPBGs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4c6b45bbc2134e7e92a252bd6ef941fd5423859d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Thiews\", \"minAppVersion\": \"0.16.0\", \"name\": \"Harmonic\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Thiews/Obsidian-Harmonic";
        };
    }
);
    "heboric" = (
    let
        baseUrl = "https://github.com/nhrrs/heboric-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "heboric";
        version = "0a5fb5b94b9b3480e07b6dd2a559711bb5cedfb8";
        outputHash = "sha256-fASZP5j8rfywyKUY2esfuNgZHphughwfrGudxZK+Pfw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0a5fb5b94b9b3480e07b6dd2a559711bb5cedfb8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/nhrrs/heboric-obsidian";
        };
    }
);
    "hidden-grotto" = (
    let
        baseUrl = "https://github.com/HotAndCold245/Hidden-Grotto.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hidden-grotto";
        version = "6a9eea0ed101396e4cbae2c237b3363fa227ea7c";
        outputHash = "sha256-5wEn2EyEUMnUOBMewstLjfbjFuTbfN51jI9uHeIn6kU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6a9eea0ed101396e4cbae2c237b3363fa227ea7c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/HotAndCold245/Hidden-Grotto";
        };
    }
);
    "higlighter" = (
    let
        baseUrl = "https://github.com/lukauskas/obsidian-highlighter-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "higlighter";
        version = "1d4bddecb460ba101355c8376895fd887847a06f";
        outputHash = "sha256-jLkxR4MJIN3xv61eh80jL18m6cWmdhdbx8eN2pjAhcc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1d4bddecb460ba101355c8376895fd887847a06f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"lukauskas\", \"minAppVersion\": \"0.16.0\", \"name\": \"Higlighter\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lukauskas/obsidian-highlighter-theme";
        };
    }
);
    "hipstersmoothie" = (
    let
        baseUrl = "https://github.com/hipstersmoothie/hipstersmoothie-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hipstersmoothie";
        version = "e736e04b42e5dfd891954d4793f750b6906333d8";
        outputHash = "sha256-13YORZcCREMqyKl1W2ODq37XPES1dieYe2QSDoViYIk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e736e04b42e5dfd891954d4793f750b6906333d8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Andrew Lisowski\", \"minAppVersion\": \"0.16.0\", \"name\": \"Hipstersmoothie\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hipstersmoothie/hipstersmoothie-obsidian-theme";
        };
    }
);
    "hojicha" = (
    let
        baseUrl = "https://github.com/pr0methevs/Hojicha.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hojicha";
        version = "e51668296b84901e29418416047f641bac68a46d";
        outputHash = "sha256-PLk1xal6yLCtU5PxqFe9/aKKHLvJwX0m2+1HyaEJHn8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e51668296b84901e29418416047f641bac68a46d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/pr0methevs/Hojicha";
        };
    }
);
    "hover-popup" = (
    let
        baseUrl = "https://github.com/COGQOD/hoverpopup-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hover-popup";
        version = "2198a475dfb3405af9a8f0589c85bf9a0cec65b0";
        outputHash = "sha256-J8EKdnkHvfCzQo+ooOj63cLVzx0Z/3+6edsiTZeqBXA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2198a475dfb3405af9a8f0589c85bf9a0cec65b0 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/COGQOD/hoverpopup-obsidian-theme";
        };
    }
);
    "hulk" = (
    let
        baseUrl = "https://github.com/pgalliford/Obsidian-theme-Incredible-Hulk.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hulk";
        version = "276003d78dacbdccd01611b157af4c9411b234f6";
        outputHash = "sha256-yTnFAnVtPLP1QM7SPWtXjXR+OMq28TszKnBgkKTGT70=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=276003d78dacbdccd01611b157af4c9411b234f6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Reggie\", \"minAppVersion\": \"0.16.0\", \"name\": \"Hulk\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/pgalliford/Obsidian-theme-Incredible-Hulk";
        };
    }
);
    "hydra-pressure" = (
    let
        baseUrl = "https://github.com/monoooki/obsidian-hydra-pressure-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "hydra-pressure";
        version = "e235d90af5012661926ff3214c7debffa4d7d2ad";
        outputHash = "sha256-bHaZbbEA7C7D4/klp06j3nLp96RmKrtvvrc4vLy1UAY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e235d90af5012661926ff3214c7debffa4d7d2ad --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/monoooki/obsidian-hydra-pressure-theme";
        };
    }
);
    "its-theme" = (
    let
        baseUrl = "https://github.com/SlRvb/Obsidian--ITS-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "its-theme";
        version = "1a7d153925912eaf99b2656ecefa84378c601530";
        outputHash = "sha256-2kqRhTxHoEl05Ggvg/XH3EzVJ198dMjV2xTl0uLc7r8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1a7d153925912eaf99b2656ecefa84378c601530 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/SlRvb/Obsidian--ITS-Theme";
        };
    }
);
    "iceberg" = (
    let
        baseUrl = "https://github.com/izumin5210/obsidian-iceberg.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "iceberg";
        version = "40bbf2e4b5dc0baba9edda2fa404e7bbb6092b2a";
        outputHash = "sha256-5yJOTQzQBodICIIzOX2HhtPmqCIzQgL7NW5cMs0Gofk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=40bbf2e4b5dc0baba9edda2fa404e7bbb6092b2a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"izumin5210\", \"minAppVersion\": \"0.16.0\", \"name\": \"Iceberg\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/izumin5210/obsidian-iceberg";
        };
    }
);
    "improved-potato" = (
    let
        baseUrl = "https://github.com/DMeurer/improved-potato.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "improved-potato";
        version = "1bc7f15f55f841d768e3c2a937011f130f8864e6";
        outputHash = "sha256-HugZM9gfWaG9EibVA1vmtgKaYPd6ID4McG+MYoqJXy0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1bc7f15f55f841d768e3c2a937011f130f8864e6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/DMeurer/improved-potato";
        };
    }
);
    "ink" = (
    let
        baseUrl = "https://github.com/harmtemolder/obsidian-ink.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ink";
        version = "d0ea9ef3f8991565550946b5d950ec383132df53";
        outputHash = "sha256-kvLVuqtLXzHLVNt6g6XrpOzSkNApVJa94B+Mrhp12gM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d0ea9ef3f8991565550946b5d950ec383132df53 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/harmtemolder/obsidian-ink";
        };
    }
);
    "iridium" = (
    let
        baseUrl = "https://github.com/kyffa/Iridium.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "iridium";
        version = "3ded063886a632b27be4a5b4e824968f97e7eb56";
        outputHash = "sha256-1RpxYc7ffFUqsnYt0xec7UM2ybnSHNtz04cAeI3zkEQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3ded063886a632b27be4a5b4e824968f97e7eb56 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kyffa/Iridium";
        };
    }
);
    "jotter" = (
    let
        baseUrl = "https://github.com/lnbgc/obsidian-jotter.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "jotter";
        version = "e6dc42883d149de3b0c0660c63c2985b9dc0a474";
        outputHash = "sha256-rywTsemWl1Ldyfh3OZIMOuTM8DyNGKb8gQPxZHo2YJw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e6dc42883d149de3b0c0660c63c2985b9dc0a474 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lnbgc/obsidian-jotter";
        };
    }
);
    "kakano" = (
    let
        baseUrl = "https://github.com/isaacfreeman/kakano-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "kakano";
        version = "2551cd2879888ee01f814e2705685e34082db590";
        outputHash = "sha256-f0oNv9QB7nkivjmvYQNpkANejek/oC8rX4kAV9oqQsY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2551cd2879888ee01f814e2705685e34082db590 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/isaacfreeman/kakano-obsidian-theme";
        };
    }
);
    "kanagawa" = (
    let
        baseUrl = "https://github.com/sspaeti/obsidian_kanagawa.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "kanagawa";
        version = "f8f969cd75d8b28e43bf7409765ba9ae2eb65670";
        outputHash = "sha256-+iNyhOF/pj8eiWIhysiqxy5YS0r/DFrFcFO7zPEjTQU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f8f969cd75d8b28e43bf7409765ba9ae2eb65670 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sspaeti/obsidian_kanagawa";
        };
    }
);
    "kanagawa-paper" = (
    let
        baseUrl = "https://github.com/sspaeti/obsidian_kanagawa_paper.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "kanagawa-paper";
        version = "e51987b17d7e009d609a89b14b658dd6bee2a068";
        outputHash = "sha256-gTzOXBaWSnDtoEwGqmv6AQihayffemNXwxOGZyQiUO4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e51987b17d7e009d609a89b14b658dd6bee2a068 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sspaeti/obsidian_kanagawa_paper";
        };
    }
);
    "kiwi-mono" = (
    let
        baseUrl = "https://github.com/c-sooyoung/kiwi-mono-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "kiwi-mono";
        version = "20538a074e80f896d86138981065931c7d3cae9f";
        outputHash = "sha256-rougF0x1fwYUbPhj07ZRmhD13sxTtYSPh7Yha29WsBs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=20538a074e80f896d86138981065931c7d3cae9f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/c-sooyoung/kiwi-mono-obsidian-theme";
        };
    }
);
    "kurokula" = (
    let
        baseUrl = "https://github.com/Indyandie/kurokula-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "kurokula";
        version = "762f78d8f36b95521fdd806f869f22dacbd9a794";
        outputHash = "sha256-9OQn7yKgiFTpxO77PLmZJSdRs5c/N1Ea+I4TqbGrg/0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=762f78d8f36b95521fdd806f869f22dacbd9a794 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Indyandie/kurokula-obsidian-theme";
        };
    }
);
    "lyt-mode" = (
    let
        baseUrl = "https://github.com/nickmilo/LYT-Mode.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lyt-mode";
        version = "28f67f18a24f5c8d3b58954eb8374bf2ecffbb50";
        outputHash = "sha256-ZALdknMo8DnQHyurKkz5qz4Q6ZH/ys8D5vcR+IeRcl8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=28f67f18a24f5c8d3b58954eb8374bf2ecffbb50 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/nickmilo/LYT-Mode";
        };
    }
);
    "la-te-x" = (
    let
        baseUrl = "https://github.com/benf2004/Obsidian-LaTeX-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "la-te-x";
        version = "aaa617d8ab869d74a42b5a188c60581f983d51a8";
        outputHash = "sha256-aAZih3QuHMg5HkA0rLe+IyB5/cpj/gc1slHb/YrGYCE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=aaa617d8ab869d74a42b5a188c60581f983d51a8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/benf2004/Obsidian-LaTeX-Theme";
        };
    }
);
    "lagom" = (
    let
        baseUrl = "https://github.com/LeslyeCream/Lagom-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lagom";
        version = "1004cc8d360d12304856f3ac3bd503f81e765002";
        outputHash = "sha256-yksdLxSV25FsxHNfwUBlN4i1FH/1I9JRXuwOqLULNec=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1004cc8d360d12304856f3ac3bd503f81e765002 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/LeslyeCream/Lagom-Obsidian-Theme";
        };
    }
);
    "lavender-mist" = (
    let
        baseUrl = "https://github.com/Quinta0/Lavender-Mist.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lavender-mist";
        version = "f2acc2d5d802068b9401d5169f9e6345c819228a";
        outputHash = "sha256-2hjCJ3iegb+CGilopgd9wyflmT51s6wfl0tdMjpdHAM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f2acc2d5d802068b9401d5169f9e6345c819228a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Lavender-Mist";
        };
    }
);
    "lemons-theme" = (
    let
        baseUrl = "https://github.com/mProjectsCode/obsidian-lemons-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lemons-theme";
        version = "2697fc0587475488c7c1ea40825ca0a1b1fef991";
        outputHash = "sha256-i5c7GBH1aOWjAPQpoY5ixClfC7Dp9WwodmyZaz5q9Z0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2697fc0587475488c7c1ea40825ca0a1b1fef991 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mProjectsCode/obsidian-lemons-theme";
        };
    }
);
    "less-wrong" = (
    let
        baseUrl = "https://github.com/outsidetext/lesswrong-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "less-wrong";
        version = "437013fa8ae0f30f5e3cf45b03465c96b998b46b";
        outputHash = "sha256-zsK2tqDG3UR5IDvLjH2E/YcDFiTKC/B0+2b2I0n0fh0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=437013fa8ae0f30f5e3cf45b03465c96b998b46b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/outsidetext/lesswrong-obsidian";
        };
    }
);
    "light-bright" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/obsidian-light-and-bright-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "light-bright";
        version = "4544ececda4ae91ed4c8dd852242f63866b36bdf";
        outputHash = "sha256-EySCnhGO+dyfWngvio8i3HHoI2bNZF6N/bvx269JeBE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4544ececda4ae91ed4c8dd852242f63866b36bdf --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/obsidian-light-and-bright-theme";
        };
    }
);
    "listive" = (
    let
        baseUrl = "https://github.com/efemkay/obsidian-listive-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "listive";
        version = "698f27ce12d23ee451712639df9c4b429019f751";
        outputHash = "sha256-DjD53129vGjLknP3yUT5shBMH3FOxtXKLeUuK8YtRZ0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=698f27ce12d23ee451712639df9c4b429019f751 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/efemkay/obsidian-listive-theme";
        };
    }
);
    "lizardmen-zettelkasten" = (
    let
        baseUrl = "https://github.com/dogwaddle/lizardmen-zettelkasten.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lizardmen-zettelkasten";
        version = "6c0303578d307dca7a108008b56ba35dea66a1a1";
        outputHash = "sha256-ITlldKfnkgowz+32Dh0tw2xGT0tcYeDOynwa1B91Owk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6c0303578d307dca7a108008b56ba35dea66a1a1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"lizardmenfromspace\", \"minAppVersion\": \"0.16.0\", \"name\": \"Lizardmen Zettelkasten\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dogwaddle/lizardmen-zettelkasten";
        };
    }
);
    "lorens" = (
    let
        baseUrl = "https://github.com/lorens-osman-dev/Lorens-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lorens";
        version = "6f02a6f9e293063e5bf00f94ea2872bcd0586336";
        outputHash = "sha256-L952+Xy5zF0GngTRVYfR5SLpQKB9Xh+TioLIvzTBNgQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6f02a6f9e293063e5bf00f94ea2872bcd0586336 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lorens-osman-dev/Lorens-Obsidian-Theme";
        };
    }
);
    "lumines" = (
    let
        baseUrl = "https://github.com/danielkhmara/obsidian-lumines.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "lumines";
        version = "c211208850fd8461d93520d61a8c2f7ee87c89fe";
        outputHash = "sha256-Q/6ECwkH8RVSp/cbeYq6PSB+ZHAM3Rz392jFD3lt8eU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c211208850fd8461d93520d61a8c2f7ee87c89fe --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/danielkhmara/obsidian-lumines";
        };
    }
);
    "mado-11" = (
    let
        baseUrl = "https://github.com/hydescarf/Obsidian-Theme-Mado-11.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mado-11";
        version = "7ed684732edcc146df4c99e0b85327025cfa180e";
        outputHash = "sha256-Kp/BMxYXAER3LdPXiO9ooynVDXD9dzivvbvuYiwGmLs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7ed684732edcc146df4c99e0b85327025cfa180e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hydescarf/Obsidian-Theme-Mado-11";
        };
    }
);
    "mado-miniflow" = (
    let
        baseUrl = "https://github.com/hydescarf/Obsidian-Theme-Mado-Miniflow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mado-miniflow";
        version = "9182ee230f882557d5afe75a1f5a34abaf0c1702";
        outputHash = "sha256-epYfHAYC4+oOMdUsbYY6CunlwolNa0ivq3ex/Ixh7MM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9182ee230f882557d5afe75a1f5a34abaf0c1702 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hydescarf/Obsidian-Theme-Mado-Miniflow";
        };
    }
);
    "mammoth" = (
    let
        baseUrl = "https://github.com/Wittionary/mammoth-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mammoth";
        version = "58efdc1d21325587f78c4d591c37a1fffe05e66b";
        outputHash = "sha256-ZHdM3aroxob+UsAAyNdKPBZI2p88VVDlhfHonEKH6lg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=58efdc1d21325587f78c4d591c37a1fffe05e66b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Wittionary/mammoth-obsidian-theme";
        };
    }
);
    "maple" = (
    let
        baseUrl = "https://github.com/subframe7536/obsidian-theme-maple.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "maple";
        version = "dec4ddcd01f3cbc6bd2a348ac3cbb0c04d1c3fcc";
        outputHash = "sha256-fXqEmD2xcL0buCdBnp1DNhCTzc5VfD4LANAZ6lNTNJI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=dec4ddcd01f3cbc6bd2a348ac3cbb0c04d1c3fcc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/subframe7536/obsidian-theme-maple";
        };
    }
);
    "marathon" = (
    let
        baseUrl = "https://github.com/Spekulucius/obsidian-marathon.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "marathon";
        version = "c40f96774fddfee2ef1c0e424fa20c1c03ad950f";
        outputHash = "sha256-br+qkmm0II0gHKxvY4kPWkl0OFdBWQEaVssxJyNb0EY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c40f96774fddfee2ef1c0e424fa20c1c03ad950f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Spekulucius/obsidian-marathon";
        };
    }
);
    "material-3" = (
    pkgs.stdenvNoCC.mkDerivation {
        pname = "material-3";
        version = "29ac134721e0db5387f900eb56c149f94877fae7";
        outputHash = "sha256-AU4gHCdEOzLAAlqqn5GDJhopQ1smLeHVfBR4L6Qs3ms=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.curl pkgs.mktemp];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            mkdir -p $out
            curl -sfL -o $out/manifest.json ""
            curl -sfL -o $out/theme.css ""
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/HarmfulBreeze/obsidian-material-3-theme";
        };
    }
);
    "material-flat" = (
    let
        baseUrl = "https://github.com/threethan/obsidian-material-flat-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "material-flat";
        version = "7cdde70335af0f577a3f6be6c3a69bae7caf5167";
        outputHash = "sha256-fEFHyyGv+MexayV/Eh+1eapg+cbXW4mesiJ6les/iV8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7cdde70335af0f577a3f6be6c3a69bae7caf5167 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/threethan/obsidian-material-flat-theme";
        };
    }
);
    "material-gruvbox" = (
    let
        baseUrl = "https://github.com/AllJavi/material_gruvbox_obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "material-gruvbox";
        version = "35b5bc1d7f857cecfc87bab4bfe74e3de11f4d11";
        outputHash = "sha256-uGW8plpZStsfJqxPRjDSwsWBGyvLX77Vm0Cvfogq+yc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=35b5bc1d7f857cecfc87bab4bfe74e3de11f4d11 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/AllJavi/material_gruvbox_obsidian";
        };
    }
);
    "material-ocean" = (
    let
        baseUrl = "https://github.com/dragonwocky/obsidian-material-ocean.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "material-ocean";
        version = "c7fe9a2a65c6f7f8d6773e0ff92e181d1c579fc1";
        outputHash = "sha256-APNDjWS6PzwaCrbxosIHddSidc0rOSytGxpIX7/rWyY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c7fe9a2a65c6f7f8d6773e0ff92e181d1c579fc1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dragonwocky/obsidian-material-ocean";
        };
    }
);
    "matrix" = (
    let
        baseUrl = "https://github.com/dubefab/Matrix.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "matrix";
        version = "b8f2c218e9df472a3e9e6dc6d170976ff4782544";
        outputHash = "sha256-s/eTAZWMEySgNkMEnqG9mRH/lxM4gf6MWywyYCCJm9g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b8f2c218e9df472a3e9e6dc6d170976ff4782544 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dubefab/Matrix";
        };
    }
);
    "meridian" = (
    let
        baseUrl = "https://github.com/mvahaste/meridian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "meridian";
        version = "4ad1c89c8fdf0ab806cf79a8c17973a6b3618d50";
        outputHash = "sha256-RF9chu4hgBnGLJDGspegAZvqdYq6vTRh7lGeVD1OUOU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4ad1c89c8fdf0ab806cf79a8c17973a6b3618d50 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mvahaste/meridian";
        };
    }
);
    "micro-mike" = (
    let
        baseUrl = "https://github.com/ThisTheThe/MicroMike.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "micro-mike";
        version = "04dc1892e4109f40fb42c0a76f7c6dc44c9feabe";
        outputHash = "sha256-zEwu2zKrxqvmdPvfyNBQj+j98lNR0YDuqKZc8du/Vzg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=04dc1892e4109f40fb42c0a76f7c6dc44c9feabe --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ThisTheThe/MicroMike";
        };
    }
);
    "midnight-fjord" = (
    let
        baseUrl = "https://github.com/Quinta0/Midnight-Fjord.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "midnight-fjord";
        version = "8e5de6ca62673b5233eec14b1fc0cad74cb7bcb0";
        outputHash = "sha256-kDikHqTHrEZRvCQ89RC9szNBptkPrpZIHlT4et7uVBo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8e5de6ca62673b5233eec14b1fc0cad74cb7bcb0 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Midnight-Fjord";
        };
    }
);
    "minimal" = (
    let
        baseUrl = "https://github.com/kepano/obsidian-minimal.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimal";
        version = "b0b08ab466d53ea8c7a1d93e79555df084ea89ac";
        outputHash = "sha256-t8rwLn0BNdsh9vDcOgFqpPJwDWXcVmtVfTQJDkNeN8Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b0b08ab466d53ea8c7a1d93e79555df084ea89ac --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kepano/obsidian-minimal";
        };
    }
);
    "minimal-dracula" = (
    let
        baseUrl = "https://github.com/druxorey/minimal-dracula-for-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimal-dracula";
        version = "25079c7ea22a07d3b5627ea2fca93a275393d2cb";
        outputHash = "sha256-av+bjIEV60p4mUEYusHVWO2qHyqYrYuKsxAbkSvvcVg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=25079c7ea22a07d3b5627ea2fca93a275393d2cb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/druxorey/minimal-dracula-for-obsidian";
        };
    }
);
    "minimal-edge" = (
    let
        baseUrl = "https://github.com/hariiy-sys/Obsidian-Minimal-Edge.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimal-edge";
        version = "d6343be89368902dcba092873715bc7470645509";
        outputHash = "sha256-I2RAFefqb8+ZkqRBWKhKL+veC0TczDgh+9j0n0w7wqE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d6343be89368902dcba092873715bc7470645509 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hariiy-sys/Obsidian-Minimal-Edge";
        };
    }
);
    "minimal-red" = (
    let
        baseUrl = "https://github.com/AfonsoMiranda02/MinimalRed-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimal-red";
        version = "b70a74abfa18d8e0785346d884e63a2903c189b3";
        outputHash = "sha256-kuRl7v9fgfKeImfnrbyo65LDd0hfi4STs25dbDz1sRU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b70a74abfa18d8e0785346d884e63a2903c189b3 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/AfonsoMiranda02/MinimalRed-Obsidian-Theme";
        };
    }
);
    "minimal-dark-coder" = (
    let
        baseUrl = "https://github.com/Krishna-Sen-Programming-World/Minimal-Dark-Coder.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimal-dark-coder";
        version = "73a756843501e1c2846521c3cb28ddbde050af5a";
        outputHash = "sha256-TBJIS/Rd1z2K3jm2DDZT6wr3NkfrOho6HZ51eonodkQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=73a756843501e1c2846521c3cb28ddbde050af5a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Krishna-Sen-Programming-World/Minimal-Dark-Coder";
        };
    }
);
    "minimalist-studio" = (
    let
        baseUrl = "https://github.com/david-troyer/obsidian-theme-minimalist-studio.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimalist-studio";
        version = "8d67c1446232399216057736b1dd551d64f9852a";
        outputHash = "sha256-dDEm/N55CNBNaogV3Ws+t2CjwnQYfeDWBMXQU/GYbM8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8d67c1446232399216057736b1dd551d64f9852a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/david-troyer/obsidian-theme-minimalist-studio";
        };
    }
);
    "minimalists-paradise" = (
    let
        baseUrl = "https://github.com/bellebasso/Minimalists-Paradise.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "minimalists-paradise";
        version = "96560513ac66e0dd6ec93cd6ec76599dd7cb3e4e";
        outputHash = "sha256-eAQGMa0ucKRz4JAXe9HF06IyUYMCmvUBAR1F10GYQHI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=96560513ac66e0dd6ec93cd6ec76599dd7cb3e4e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bellebasso/Minimalists-Paradise";
        };
    }
);
    "mint-breeze" = (
    let
        baseUrl = "https://github.com/Quinta0/Mint-Breeze.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mint-breeze";
        version = "c6c7c38940f02a114718d2edb89e65edad8fa8a6";
        outputHash = "sha256-2ynnNs5lXzRf7/P16GE37hnso14wxu20/gwzmEyY0IM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c6c7c38940f02a114718d2edb89e65edad8fa8a6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Mint-Breeze";
        };
    }
);
    "misty-mauve" = (
    let
        baseUrl = "https://github.com/RaveSplash/obsidian-misty-mauve.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "misty-mauve";
        version = "0c05793d4939f01d30f8719c16945ca921ed52eb";
        outputHash = "sha256-DyG87oCFFgJZImB2aVCwbBy/I8tYIXRBdDQqg+hhmZ4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0c05793d4939f01d30f8719c16945ca921ed52eb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/RaveSplash/obsidian-misty-mauve";
        };
    }
);
    "modern-dark" = (
    let
        baseUrl = "https://github.com/roberts-code/obsidian-theme-modern-dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "modern-dark";
        version = "fbc2204867d32501b78f3852628579eb4bb8aeef";
        outputHash = "sha256-J0/zvOYpLgWDBQ1I0GnCJEYVLQQUbvAE6F7x83+Vq7A=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fbc2204867d32501b78f3852628579eb4bb8aeef --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Robert M\", \"minAppVersion\": \"0.16.0\", \"name\": \"Modern Dark\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/roberts-code/obsidian-theme-modern-dark";
        };
    }
);
    "modern-gen-z-vibedose" = (
    let
        baseUrl = "https://github.com/omkar-4/Modern-GenZ-Vibedose.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "modern-gen-z-vibedose";
        version = "73a176b4f50d10d73a4ba87075daf8c0f631a8a0";
        outputHash = "sha256-kdIKfQsv8ymnugTkh9b8rpDxxKtKW3vQqRRJbw7zO/k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=73a176b4f50d10d73a4ba87075daf8c0f631a8a0 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/omkar-4/Modern-GenZ-Vibedose";
        };
    }
);
    "mono-high-contrast" = (
    let
        baseUrl = "https://github.com/manuelcoca/obsidian-mono-high-contrast-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mono-high-contrast";
        version = "2f83965288b0ccb4c81eed2c5e265f7b20ea19fd";
        outputHash = "sha256-jrhaqptNcjpO9Qq8GZFJtHZBaIYhuIP13UXCtbxXS5g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2f83965288b0ccb4c81eed2c5e265f7b20ea19fd --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/manuelcoca/obsidian-mono-high-contrast-theme";
        };
    }
);
    "monokai" = (
    let
        baseUrl = "https://github.com/bitSchleuder/obsidian-monokai-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "monokai";
        version = "174d8b3386d9064704fa71c2a067f8bbe82bc999";
        outputHash = "sha256-zczChfZ1DUpqeP3IpJybbAj82Mbau1eUU4A3KGkax2Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=174d8b3386d9064704fa71c2a067f8bbe82bc999 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bitSchleuder/obsidian-monokai-theme";
        };
    }
);
    "monokai-ristretto" = (
    let
        baseUrl = "https://github.com/vinitkumar/monokai-ristretto-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "monokai-ristretto";
        version = "60d97261c342954ae6177863d362436a3753103c";
        outputHash = "sha256-bqZbVIFLyKzNmn+iDoB5tZZtbSjbTLtTLy8L7K1zcxU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=60d97261c342954ae6177863d362436a3753103c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vinitkumar/monokai-ristretto-obsidian";
        };
    }
);
    "moonlight" = (
    let
        baseUrl = "https://github.com/kartik-karz/moonlight-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "moonlight";
        version = "2476123611b1197c8a81149f80d63115f61a22b7";
        outputHash = "sha256-7rRMafCGFqLNuVsNsk5SuxY9qq4JxjnWDR0Qh4bdWRA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2476123611b1197c8a81149f80d63115f61a22b7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"karz\", \"minAppVersion\": \"0.16.0\", \"name\": \"Moonlight\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kartik-karz/moonlight-obsidian";
        };
    }
);
    "mulled-wine" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-mulled-wine.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mulled-wine";
        version = "f85c132d5c92e20b3520869b6811c88b0de52e0a";
        outputHash = "sha256-r1KN+w10bdH0nwq+hn/1j1Qa3oUcgASdud4bOXvDfpE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f85c132d5c92e20b3520869b6811c88b0de52e0a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-mulled-wine";
        };
    }
);
    "museifu-basic" = (
    let
        baseUrl = "https://github.com/account-not-relevant/museifu-basic-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "museifu-basic";
        version = "cd9789e18402eed80e979d72e006299d93453624";
        outputHash = "sha256-/wZeooAkLL4PaYNjPRDGj2/ORO4MQsGkjG6l7eHhX6k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cd9789e18402eed80e979d72e006299d93453624 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/account-not-relevant/museifu-basic-theme";
        };
    }
);
    "mushin" = (
    let
        baseUrl = "https://github.com/Vlad3Design/Mushin.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mushin";
        version = "dd5635655ec7fd39bc7ea18ae9c82fdb45cc865a";
        outputHash = "sha256-UleVqj+T6/rSkDwhigFcZBKusiypKm4nquN/2tXRl0k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=dd5635655ec7fd39bc7ea18ae9c82fdb45cc865a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Vlad3Design/Mushin";
        };
    }
);
    "muted-blue" = (
    let
        baseUrl = "https://github.com/HasanTheSyrian/Muted-Blue-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "muted-blue";
        version = "1fa4c8e8fa246a7459af104ddb85203d71eaa276";
        outputHash = "sha256-SZD9a80JCUqtxDtwDgPpgknC5NJtdTjb++03/2OGOdI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1fa4c8e8fa246a7459af104ddb85203d71eaa276 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/HasanTheSyrian/Muted-Blue-Obsidian";
        };
    }
);
    "myst" = (
    let
        baseUrl = "https://github.com/mulder3062/Myst.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "myst";
        version = "6cf31f71305df8a4e9a35d7cbbb04f158014fe9c";
        outputHash = "sha256-Ioz4qxIGHuwmHbBdrDrymO2ZbQVvETCZbMJAWtKDWl4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6cf31f71305df8a4e9a35d7cbbb04f158014fe9c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mulder3062/Myst";
        };
    }
);
    "neo" = (
    let
        baseUrl = "https://github.com/x0aa7i/obsidian-neo.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neo";
        version = "ae7bb3fc46d2826d9da73a75c62b36cd5ce42e6a";
        outputHash = "sha256-DSlfQvyDXLaccpREPPsRPMX5E3dnkX1Rb/Q3P/Znf6o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ae7bb3fc46d2826d9da73a75c62b36cd5ce42e6a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/x0aa7i/obsidian-neo";
        };
    }
);
    "neo-sploosh" = (
    let
        baseUrl = "https://github.com/monoooki/obsidian-neo-sploosh-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neo-sploosh";
        version = "239ef782c4954aa6e40a5919a13bbe6e7d5e3359";
        outputHash = "sha256-txOXxAFL3y2mLAXjbR3B8vXpM1ySQE7azsHpI2cmAeA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=239ef782c4954aa6e40a5919a13bbe6e7d5e3359 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/monoooki/obsidian-neo-sploosh-theme";
        };
    }
);
    "neon-synthwave" = (
    let
        baseUrl = "https://github.com/grjsmith/Neon-Synthwave.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neon-synthwave";
        version = "3b8d6e548af5cd09527c1247826a11f2374f841f";
        outputHash = "sha256-2HvLJbCK+YFDtT4Z3SVqZkcDayOvXDzCDD5hfDrtaCs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3b8d6e548af5cd09527c1247826a11f2374f841f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/grjsmith/Neon-Synthwave";
        };
    }
);
    "neovim" = (
    let
        baseUrl = "https://github.com/slavafyi/obsidian-neovim.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neovim";
        version = "875de843da06e6dc953328c16686543d71f6dac7";
        outputHash = "sha256-EupVSe66ynNfOG+sZ7ukTWG2zgq2rEvTtgDBBU6OJKs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=875de843da06e6dc953328c16686543d71f6dac7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/slavafyi/obsidian-neovim";
        };
    }
);
    "neu-border" = (
    let
        baseUrl = "https://github.com/sq1000000/NeuBorder.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neu-border";
        version = "57cbf02bb2a8f5269712205ae1c3418c39fbecc5";
        outputHash = "sha256-dpSkOXMfjIyu5/rOJHL0R9t/ZYcHkiCFSvvx7g2WLP0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=57cbf02bb2a8f5269712205ae1c3418c39fbecc5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sq1000000/NeuBorder";
        };
    }
);
    "neumorphism" = (
    let
        baseUrl = "https://github.com/LennZone/Neumorphism.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neumorphism";
        version = "9ea010e3dae255c2138c68e2e4518be1a5ffb72b";
        outputHash = "sha256-E+4L98uHoV1FMOFduVz7L93mXeETEtKV0/bjFb3yDXs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9ea010e3dae255c2138c68e2e4518be1a5ffb72b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/LennZone/Neumorphism";
        };
    }
);
    "neutral-academia" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-neutral-academia.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "neutral-academia";
        version = "b4fb70a06e2b3eda6461db408d95aa5c626712f6";
        outputHash = "sha256-sbSvUFRH/mutSO6C4HQX9VSp4gWwjdO11kX663LvEOU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b4fb70a06e2b3eda6461db408d95aa5c626712f6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-neutral-academia";
        };
    }
);
    "nich-neumor" = (
    let
        baseUrl = "https://github.com/Nichtigott/NichNeumor.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nich-neumor";
        version = "ed4c2de08e3e3ce30a7a13a253f5d142ad0471ab";
        outputHash = "sha256-tAwZ/zZxYlwDwxRfmZneDk2uosX5UYeyBJ+1NefoQiE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ed4c2de08e3e3ce30a7a13a253f5d142ad0471ab --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Nichtigott/NichNeumor";
        };
    }
);
    "nier" = (
    let
        baseUrl = "https://github.com/exloseur3d/nier-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nier";
        version = "fa7b30b6332434761b4004a3bc36aa33b83a9f8d";
        outputHash = "sha256-LFYRc7qANp5OvsEEp3GZhN7LAXMssTweQlDwVJ/sfpo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fa7b30b6332434761b4004a3bc36aa33b83a9f8d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/exloseur3d/nier-theme";
        };
    }
);
    "nightfox" = (
    let
        baseUrl = "https://github.com/markmacode/obsidian-nightfox.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nightfox";
        version = "95d5dbbd8445779fcbac9948893ed166959e97e6";
        outputHash = "sha256-gYMPpNayK9pbZ10gCSvUedSBIk0IZ3M0uM68osU+rN0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=95d5dbbd8445779fcbac9948893ed166959e97e6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/markmacode/obsidian-nightfox";
        };
    }
);
    "nightingale" = (
    let
        baseUrl = "https://github.com/frank0713/nightingale-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nightingale";
        version = "a05d55d86b9f5b7b5fe62990b82a29f4f88564f1";
        outputHash = "sha256-ySO/X3zDRscuQsgE62yk+pVroLFffuQtiWtvaK/gTKU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a05d55d86b9f5b7b5fe62990b82a29f4f88564f1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/frank0713/nightingale-obsidian";
        };
    }
);
    "nightly-wolf" = (
    let
        baseUrl = "https://github.com/codejota/NightlyWolf_ObsidianTheme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nightly-wolf";
        version = "ba86488798f40a332f417d2171ed3cfee3673ca9";
        outputHash = "sha256-EpFGRF9s/UwI0zFa0lQionkVPWghF2yaC8VIlatC2pQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ba86488798f40a332f417d2171ed3cfee3673ca9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/codejota/NightlyWolf_ObsidianTheme";
        };
    }
);
    "noctilux" = (
    let
        baseUrl = "https://github.com/RastGame/obsidian-Noctilux.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "noctilux";
        version = "d6931d9ecb5b71f5de90d706f243f72c76ad31ff";
        outputHash = "sha256-c1/8Rg+U2ecv9QP41BPmTlBUqzsVD0V6Zsvn0q3FfC4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d6931d9ecb5b71f5de90d706f243f72c76ad31ff --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/RastGame/obsidian-Noctilux";
        };
    }
);
    "noctis" = (
    let
        baseUrl = "https://github.com/konnta0/obsidian-noctis-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "noctis";
        version = "8c38beac4d10a5e277b7796d9c721990e8eee947";
        outputHash = "sha256-o66RPhn8ovsmavl4c/MmFIfqAZ6bSzJ0N76KgJfjZSM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8c38beac4d10a5e277b7796d9c721990e8eee947 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/konnta0/obsidian-noctis-theme";
        };
    }
);
    "noctis-viola" = (
    let
        baseUrl = "https://github.com/konnta0/obsidian-noctis-viola-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "noctis-viola";
        version = "9ba38da52a5b153cf321125e400f63f0eaf3c238";
        outputHash = "sha256-ZqiB75imASVR5XzR2ohdwY6Y5zVCIyIyVgREeWNXW7A=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9ba38da52a5b153cf321125e400f63f0eaf3c238 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/konnta0/obsidian-noctis-viola-theme";
        };
    }
);
    "nordic" = (
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nordic";
        version = "7658ee66c1944c60d6cb0a176a4543484b4f0f82";
        outputHash = "sha256-UId3YL8qsk/sS5aAPc47Uq2FkSWcKGhE055dbsgC6Rw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.curl pkgs.mktemp];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            mkdir -p $out
            curl -sfL -o $out/manifest.json ""
            curl -sfL -o $out/theme.css ""
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/natowb/obsidian-nordic";
        };
    }
);
    "northern-sky" = (
    let
        baseUrl = "https://github.com/Quinta0/Northern-Sky.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "northern-sky";
        version = "cd6444e8781f4171a13a43b4a68ef774fddd736c";
        outputHash = "sha256-VdGNkeklEvTVGxIqwcmWlxaBlPTc3VdpsDbcJOu6+Kk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cd6444e8781f4171a13a43b4a68ef774fddd736c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Northern-Sky";
        };
    }
);
    "nostromo" = (
    let
        baseUrl = "https://github.com/gvorbeck/Nostromo.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nostromo";
        version = "bf1fb1612b29de5696e5cc266d1f3312343ee2fa";
        outputHash = "sha256-dsmrcMCI6qo+vVVvR8macU2LQ22v4j616TA6rKASebs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=bf1fb1612b29de5696e5cc266d1f3312343ee2fa --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/gvorbeck/Nostromo";
        };
    }
);
    "not-swift" = (
    let
        baseUrl = "https://github.com/davidjroos/obsidian-notswift.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "not-swift";
        version = "418f059602b8bf29de837f4fd6853be811aada4d";
        outputHash = "sha256-oWcAfpLRc5dfeR0l7H9W1lvSdLBIjEEsmTAv+hWiZfI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=418f059602b8bf29de837f4fd6853be811aada4d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/davidjroos/obsidian-notswift";
        };
    }
);
    "nota-limonada-light" = (
    let
        baseUrl = "https://github.com/crishood/nota-limonada-light.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nota-limonada-light";
        version = "25b01442ae2b10ce966c0b44bf352a3d5cfe1a56";
        outputHash = "sha256-lpeAZQlKM+lFwC51aumLaN3cH4WyIbxkRqCXKOoUSIM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=25b01442ae2b10ce966c0b44bf352a3d5cfe1a56 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/crishood/nota-limonada-light";
        };
    }
);
    "notation" = (
    let
        baseUrl = "https://github.com/deathau/Notation-for-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "notation";
        version = "f48b5dd2c33f9d5fb47df3a5b95ed6c4073061db";
        outputHash = "sha256-b6+c/US32zLsMieXMYYN57g75E5oAx4PIUn7/oLd+24=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f48b5dd2c33f9d5fb47df3a5b95ed6c4073061db --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"deathau\", \"minAppVersion\": \"0.16.0\", \"name\": \"Notation\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/deathau/Notation-for-Obsidian";
        };
    }
);
    "notation-2" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/obsidian-notation-2.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "notation-2";
        version = "58e6626182fe78f71d6125c2bf1b07501f268f11";
        outputHash = "sha256-NcLRuafq4KMXnMBaRXovm31+2smiUunWViHXRYMCgu8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=58e6626182fe78f71d6125c2bf1b07501f268f11 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/obsidian-notation-2";
        };
    }
);
    "novadust" = (
    let
        baseUrl = "https://github.com/mmartamg/novadust-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "novadust";
        version = "ad1040cf2f97505c1f6ad019a9175521d3a766cd";
        outputHash = "sha256-pZow5hPtXMoHKZIjXtmoS14OV5l7QVvQk+qD1KCYXa8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ad1040cf2f97505c1f6ad019a9175521d3a766cd --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mmartamg/novadust-obsidian";
        };
    }
);
    "oistnb" = (
    let
        baseUrl = "https://github.com/omsandippatil/OISTNB.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "oistnb";
        version = "36b1e2fd4ed8e126f8770b7603926d17e0b46ffc";
        outputHash = "sha256-D8jAh/I8uXMvnsQo/7I6BdhLptIMlj2jki/pH2FLKPo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=36b1e2fd4ed8e126f8770b7603926d17e0b46ffc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/omsandippatil/OISTNB";
        };
    }
);
    "oled-black" = (
    let
        baseUrl = "https://github.com/Inc44/OLED.Black.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "oled-black";
        version = "842af1a1e6fcb7d5e09c4fed3d307d7c506fe835";
        outputHash = "sha256-Lo41FkQDCU++02RSDT7PYtEQ8/GFrheMjx8ePz8+qs8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=842af1a1e6fcb7d5e09c4fed3d307d7c506fe835 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Inc44/OLED.Black";
        };
    }
);
    "obsdn-dark-rmx" = (
    let
        baseUrl = "https://github.com/cannibalox/Obsdn-dark-rmx.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsdn-dark-rmx";
        version = "e0201b2dac3efb8b500e091074e9397565e24aa7";
        outputHash = "sha256-1lDdc6ZMW7tGruCzhhU6l2OOvunZacorXP5DHwXVoMo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e0201b2dac3efb8b500e091074e9397565e24aa7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"_ph\", \"minAppVersion\": \"0.16.0\", \"name\": \"Obsdn-Dark-Rmx\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/cannibalox/Obsdn-dark-rmx";
        };
    }
);
    "obsidian-boom" = (
    let
        baseUrl = "https://github.com/sainadhx/obsidian-boom.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidian-boom";
        version = "774f8bbdc8fd7edaeef482ae99e779fe99dbc8fa";
        outputHash = "sha256-PUJofyWICPid6fmcsfINlmZWUJnA/Wn+5zHY8Td0iWE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=774f8bbdc8fd7edaeef482ae99e779fe99dbc8fa --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Sainadh\", \"minAppVersion\": \"0.16.0\", \"name\": \"Obsidian Boom\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sainadhx/obsidian-boom";
        };
    }
);
    "obsidian-nord" = (
    let
        baseUrl = "https://github.com/insanum/obsidian_nord.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidian-nord";
        version = "f40209f976fab19ae7590018591fd5311e6af7f4";
        outputHash = "sha256-d6UC1QaIfHZ+JnDZhiAPp5OVsPe/RLobHZGbOwkR+/M=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f40209f976fab19ae7590018591fd5311e6af7f4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/insanum/obsidian_nord";
        };
    }
);
    "obsidian-windows-98-edition" = (
    let
        baseUrl = "https://github.com/SMUsamaShah/Obsidian-Win98-Edition.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidian-windows-98-edition";
        version = "64ee60c33afac44624d2b05dbbd536907ca58ab4";
        outputHash = "sha256-ykqsBbQ5+Tvhm14e04hy730SEpH4fUPibKsLe4Z9aTs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=64ee60c33afac44624d2b05dbbd536907ca58ab4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"SMUsamaShah\", \"minAppVersion\": \"0.16.0\", \"name\": \"Obsidian Windows 98 Edition\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/SMUsamaShah/Obsidian-Win98-Edition";
        };
    }
);
    "obsidian-gruvbox" = (
    let
        baseUrl = "https://github.com/insanum/obsidian_gruvbox.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidian-gruvbox";
        version = "bec6c083415980155aefc1a0d26c7cfe68fd85eb";
        outputHash = "sha256-ShyrDnPF5z42ZlAMB63i4Y1SuXtAGws8TylYmtZp+kk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=bec6c083415980155aefc1a0d26c7cfe68fd85eb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/insanum/obsidian_gruvbox";
        };
    }
);
    "obsidianite" = (
    let
        baseUrl = "https://github.com/bennyxguo/Obsidian-Obsidianite.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidianite";
        version = "4e3950632623af26ab888d0de26ae2ff17bee33b";
        outputHash = "sha256-UQnD/HK1uxg4nwGUzCIfc/0o2bVcTUfQdNw53CCB6hk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4e3950632623af26ab888d0de26ae2ff17bee33b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Benny Guo\", \"minAppVersion\": \"0.16.0\", \"name\": \"Obsidianite\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bennyxguo/Obsidian-Obsidianite";
        };
    }
);
    "obsidianotion" = (
    let
        baseUrl = "https://github.com/diegoeis/obsidianotion.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidianotion";
        version = "440a053d10212a6099844b090356e5ad9674f4a1";
        outputHash = "sha256-dLw8Gm8lNBxJFmF+vZ/o2La1YhFEc6tc2ibgdk9cvoc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=440a053d10212a6099844b090356e5ad9674f4a1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/diegoeis/obsidianotion";
        };
    }
);
    "obuntu" = (
    let
        baseUrl = "https://github.com/dmytrodubinin/Obuntu-theme-for-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obuntu";
        version = "d4b7dadb9fd38a8ed99d1381032335fb970effff";
        outputHash = "sha256-Cz1GWEE4oDvrQKOpkgXndV6vVlW+wrxywWzr9XMy/ZQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d4b7dadb9fd38a8ed99d1381032335fb970effff --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Dubinin Dmitry\", \"minAppVersion\": \"0.16.0\", \"name\": \"Obuntu\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dmytrodubinin/Obuntu-theme-for-Obsidian";
        };
    }
);
    "old-world" = (
    let
        baseUrl = "https://github.com/double-tilde/old-world-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "old-world";
        version = "5bdcf0633ba30c4cf23549e9654343c9921f6072";
        outputHash = "sha256-SuG83ZoUeWeQkKM09TUKgPll9244vHZqIFSpKzz2+5Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5bdcf0633ba30c4cf23549e9654343c9921f6072 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/double-tilde/old-world-obsidian";
        };
    }
);
    "oldsidian-purple" = (
    let
        baseUrl = "https://github.com/ltctceplrm/oldsidian-purple.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "oldsidian-purple";
        version = "736139cafcb736aa28edcba2156940176705f885";
        outputHash = "sha256-Hp5Y0vAAi1mUHgFKXyT32zTWWMFNmZxj1g6ae8bBExs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=736139cafcb736aa28edcba2156940176705f885 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ltctceplrm/oldsidian-purple";
        };
    }
);
    "omega" = (
    let
        baseUrl = "https://github.com/OmegaCentauri68/Omega-Theme-for-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "omega";
        version = "749335be9d999e13acbc3173ac0f3cdedc2c6f0c";
        outputHash = "sha256-K4hnbc8sn11Xys62ziN7IPdEU1QPK1ZnQ86Ma+NsOaQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=749335be9d999e13acbc3173ac0f3cdedc2c6f0c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/OmegaCentauri68/Omega-Theme-for-Obsidian";
        };
    }
);
    "one-nice" = (
    let
        baseUrl = "https://github.com/Sunhaloo/OneNice.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "one-nice";
        version = "5f9971aad8f7017d5651b48a1ad91235e9e7e8a5";
        outputHash = "sha256-lMHgmtVBaRat6hFRVLuCVSLZghHxtUMrW55zasiHgqo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5f9971aad8f7017d5651b48a1ad91235e9e7e8a5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Sunhaloo/OneNice";
        };
    }
);
    "ono-sendai" = (
    let
        baseUrl = "https://github.com/cannibalox/ono-sendai_obsdn.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ono-sendai";
        version = "c05841901d10ce280b9cf614a343e75000f0d738";
        outputHash = "sha256-lfcJbgw4LOLcLVSPpWwxt0cMgFoDUneQ8QMFmRkyv+o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c05841901d10ce280b9cf614a343e75000f0d738 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"_ph\", \"minAppVersion\": \"0.16.0\", \"name\": \"Ono Sendai\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/cannibalox/ono-sendai_obsdn";
        };
    }
);
    "orange" = (
    let
        baseUrl = "https://github.com/afrangi/Obsidian-Theme-Orange.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "orange";
        version = "4aaf659d5085e46f8c29100e291920598078b1f8";
        outputHash = "sha256-2z9/LnxUNdiwzbSprkbyewyWqxJh7Z6H/6BjJU0WkA4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4aaf659d5085e46f8c29100e291920598078b1f8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/afrangi/Obsidian-Theme-Orange";
        };
    }
);
    "oreo" = (
    let
        baseUrl = "https://github.com/carols12352/Oreo-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "oreo";
        version = "568caa410327f431cd849a09dccaf44010c0ceeb";
        outputHash = "sha256-DXO8UCHuvZF3Zl3W6iuyLHmuhUlRz0Nq9N9wXDrxoZ0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=568caa410327f431cd849a09dccaf44010c0ceeb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/carols12352/Oreo-theme";
        };
    }
);
    "origami" = (
    let
        baseUrl = "https://github.com/7368697661/Origami.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "origami";
        version = "d6db8c9c1d1d2e464a38f0d70c69a335923201b9";
        outputHash = "sha256-SvLlbYcmZYhB61HXRS8y8S0CBqjB8ZRcPp8HqQ3MINI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d6db8c9c1d1d2e464a38f0d70c69a335923201b9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/7368697661/Origami";
        };
    }
);
    "origin" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/Obsidian-Origin.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "origin";
        version = "d0e109b10e6edcd3a8f1277d70f7e0b54bcc23a9";
        outputHash = "sha256-5eTXiU7DfOvnvNVTacm3j6gaE+Dxs2fRmAlVmT4Ic8Q=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d0e109b10e6edcd3a8f1277d70f7e0b54bcc23a9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/Obsidian-Origin";
        };
    }
);
    "osaka-jade" = (
    let
        baseUrl = "https://github.com/sspaeti/obsidian_osaka_jade.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "osaka-jade";
        version = "992c09bc1b37ab586b31bc3c185b334039fcaa46";
        outputHash = "sha256-w5w4D+w+BHbF8IiAlFO9l1tMZdURk0V8xdmJIEtutY8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=992c09bc1b37ab586b31bc3c185b334039fcaa46 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sspaeti/obsidian_osaka_jade";
        };
    }
);
    "oscura" = (
    let
        baseUrl = "https://github.com/vinitkumar/oscura-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "oscura";
        version = "6f17dfcdb47c1850f103f785ff8e5ca67e6031c5";
        outputHash = "sha256-tavPzv2+2hk6nZ91dr6HCZKhzex7OagC+Jbw5E0IW2Q=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6f17dfcdb47c1850f103f785ff8e5ca67e6031c5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vinitkumar/oscura-obsidian";
        };
    }
);
    "oxygen" = (
    let
        baseUrl = "https://github.com/davidvkimball/obsidian-oxygen.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "oxygen";
        version = "02426de9814ba5466a255bf927d2da8ed908a761";
        outputHash = "sha256-7+VHg8gWaS+5UVHe5G+PAj5+31qW4OigIF61HVYQluo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=02426de9814ba5466a255bf927d2da8ed908a761 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/davidvkimball/obsidian-oxygen";
        };
    }
);
    "pln" = (
    let
        baseUrl = "https://github.com/PipeItToDevNull/PLN.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pln";
        version = "59c7fcaf8a0c9aab84b4a2151df7cfe874a4165e";
        outputHash = "sha256-aLn+WyezM59gLvW9LZ5KkRZOuHeNkZSZ8dmWZt4Q2YI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=59c7fcaf8a0c9aab84b4a2151df7cfe874a4165e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/PipeItToDevNull/PLN";
        };
    }
);
    "pale-淡" = (
    let
        baseUrl = "https://github.com/hariiy-sys/obsidian-Pale.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pale-淡";
        version = "c84f2ef800a6839b74929e4e3c6c449f25539a00";
        outputHash = "sha256-SjixweyKA5OypW3x0AoZI+9gT09q0dO7gAK+MsvzZSg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c84f2ef800a6839b74929e4e3c6c449f25539a00 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hariiy-sys/obsidian-Pale";
        };
    }
);
    "panic-mode" = (
    let
        baseUrl = "https://github.com/bcdavasconcelos/Obsidian-Panic_Mode.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "panic-mode";
        version = "b2969e688ce321ca25f03f221635d31dc58a799b";
        outputHash = "sha256-var1SVPhOf2myvaHcGuLRBrRaFl9tPRPk19FUDfJUB8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b2969e688ce321ca25f03f221635d31dc58a799b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"bernardo_v\", \"minAppVersion\": \"0.16.0\", \"name\": \"Panic Mode\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bcdavasconcelos/Obsidian-Panic_Mode";
        };
    }
);
    "penumbra" = (
    let
        baseUrl = "https://github.com/jbisits/penumbra-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "penumbra";
        version = "a2e357de3e40f529198ea2151465c34dc8a82553";
        outputHash = "sha256-Wt3TBuQNsFLuB/bSqFn4J+s0RxvayrwXKVVxCUDvHao=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a2e357de3e40f529198ea2151465c34dc8a82553 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/jbisits/penumbra-obsidian-theme";
        };
    }
);
    "perso" = (
    let
        baseUrl = "https://github.com/behrouze/obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "perso";
        version = "dc2a6ce96571be0850671363a6c827ba2fe862ef";
        outputHash = "sha256-Eu0QQor1M5n9VSmTVvIu3LrLHelBGo5xCgCI+Z131rU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=dc2a6ce96571be0850671363a6c827ba2fe862ef --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/behrouze/obsidian-theme";
        };
    }
);
    "phoenix" = (
    let
        baseUrl = "https://github.com/RyzenFromFire/obsidian-phoenix.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "phoenix";
        version = "51b895d5b838099fef84bcf11b7de1b047677385";
        outputHash = "sha256-9vLSDPNseG1iJA2ataCu86XG5ETIUVX+bRgQ76YXE5s=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=51b895d5b838099fef84bcf11b7de1b047677385 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/RyzenFromFire/obsidian-phoenix";
        };
    }
);
    "pine-forest-berry" = (
    let
        baseUrl = "https://github.com/Nilahn/pine_forest_berry.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pine-forest-berry";
        version = "e74bd849e654c22b857229ef0f9c6c6834090d2a";
        outputHash = "sha256-X1YclPCESfxRWKIiHvNqvUf8A1qeX3msFUp5AD6dAfA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e74bd849e654c22b857229ef0f9c6c6834090d2a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Nilahn\", \"minAppVersion\": \"0.16.0\", \"name\": \"Pine Forest Berry\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Nilahn/pine_forest_berry";
        };
    }
);
    "pink-topaz" = (
    let
        baseUrl = "https://github.com/shaggyfeng/obsidian-Pink-topaz-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pink-topaz";
        version = "4d260d1181027e9475d790a801b940ff686ced16";
        outputHash = "sha256-i9SwL9crwLu40qy6x+louzMPzN0JcuxJAMXe3DlrzzE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4d260d1181027e9475d790a801b940ff686ced16 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Mouth on Cloud\", \"minAppVersion\": \"0.16.0\", \"name\": \"Pink Topaz\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/shaggyfeng/obsidian-Pink-topaz-theme";
        };
    }
);
    "pisum" = (
    let
        baseUrl = "https://github.com/GuangluWu/obsidian-pisum.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pisum";
        version = "85b354088b0ab658b9b342bab9ee9e4a44f4e617";
        outputHash = "sha256-X6yFW6EJKnosS/TBKhzBZJxKVf3H4dAvTiw25dEZc8Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=85b354088b0ab658b9b342bab9ee9e4a44f4e617 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"MooddooM\", \"minAppVersion\": \"0.16.0\", \"name\": \"Pisum\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GuangluWu/obsidian-pisum";
        };
    }
);
    "planetary" = (
    let
        baseUrl = "https://github.com/ninetyfive666/Planetary.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "planetary";
        version = "c3a0418fe8efb349e57f57deb1edb4f3f3a6201b";
        outputHash = "sha256-5t7RAA+nhsl4Uk7adyLD4ijjA4/3xUAHhgSbPhIcDMI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c3a0418fe8efb349e57f57deb1edb4f3f3a6201b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ninetyfive666/Planetary";
        };
    }
);
    "planetz-roller" = (
    let
        baseUrl = "https://github.com/monoooki/obsidian-planetz-roller-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "planetz-roller";
        version = "0d7e620faab2504d76a0c9c278927bf2c292cf66";
        outputHash = "sha256-oEd8WSBFDiul8tv6WPUWO1IPrgYkWAT7I8LrP6LwvEA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0d7e620faab2504d76a0c9c278927bf2c292cf66 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/monoooki/obsidian-planetz-roller-theme";
        };
    }
);
    "playground" = (
    let
        baseUrl = "https://github.com/benjaminezequiel/playground-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "playground";
        version = "0676ea80bb6ae9f4053f2e0023de34c4deb1d039";
        outputHash = "sha256-+uXhsl+CDumWcbjSW9+2JDoUFrji2YpRGxwtegvBtfI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0676ea80bb6ae9f4053f2e0023de34c4deb1d039 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/benjaminezequiel/playground-theme";
        };
    }
);
    "poimandres" = (
    let
        baseUrl = "https://github.com/yoGhastly/poimandres-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "poimandres";
        version = "043b25567b57c8dfc8209478df28013b12faf32c";
        outputHash = "sha256-X0/YhHnMBmqDh77MsVARLwmK0D2kkfc7k8bNYkWtNpM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=043b25567b57c8dfc8209478df28013b12faf32c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/yoGhastly/poimandres-obsidian";
        };
    }
);
    "poimandres-extended" = (
    let
        baseUrl = "https://github.com/bastiangx/poimandres.obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "poimandres-extended";
        version = "a10751d1c4b730ad35e8daea2e0c9669f939383a";
        outputHash = "sha256-yS0GxH/DjlqQP2JRAeaSZX6GnBRodg1T1g/AOAT3EvQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a10751d1c4b730ad35e8daea2e0c9669f939383a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bastiangx/poimandres.obsidian";
        };
    }
);
    "polka" = (
    let
        baseUrl = "https://github.com/callumhackett/obsidian_polka_theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "polka";
        version = "6e458231de51419cbbf1f7102aed1b000119863e";
        outputHash = "sha256-y0PTUB//gXE4cQ1YiThqGXr89+lV+8iza06L8iUGnkg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6e458231de51419cbbf1f7102aed1b000119863e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/callumhackett/obsidian_polka_theme";
        };
    }
);
    "pomme-notes" = (
    let
        baseUrl = "https://github.com/MrParalloid/pomme-notes.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pomme-notes";
        version = "ee799e8b3f99bf3fb3aa47316489950997b880f2";
        outputHash = "sha256-W6OChKKshMp7mjh0UK79+YUV/AMFMXqRVWPnbDaO7f4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ee799e8b3f99bf3fb3aa47316489950997b880f2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/MrParalloid/pomme-notes";
        };
    }
);
    "powered-by-lancer" = (
    let
        baseUrl = "https://github.com/SourTarte/Powered-By-Lancer.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "powered-by-lancer";
        version = "52796e1e3c42e84565d21a46c4c355da95bb7793";
        outputHash = "sha256-SCWmHn3VsJI6MICrEMYS8PREz+EeiMiA6agOnNEMYnU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=52796e1e3c42e84565d21a46c4c355da95bb7793 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/SourTarte/Powered-By-Lancer";
        };
    }
);
    "powered-by-lancer-retouched" = (
    let
        baseUrl = "https://github.com/Cloopy/Powered-by-Lancer---Retouched.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "powered-by-lancer-retouched";
        version = "4190ee6235fb5579821b5016a7f25c3d237a8cfa";
        outputHash = "sha256-U7Rdm/I6sIEFzjJEbbvNPhtWmVvaKDKcxSGY5UlhyCo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4190ee6235fb5579821b5016a7f25c3d237a8cfa --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Cloopy/Powered-by-Lancer---Retouched";
        };
    }
);
    "primary" = (
    let
        baseUrl = "https://github.com/primary-theme/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "primary";
        version = "99c73eaa74c956953d8b1b594c4a155e13a340dc";
        outputHash = "sha256-j57AOLTR61M1jY/RxZPBxSfrpwh7YSXoIeM+U+ZEsFc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=99c73eaa74c956953d8b1b594c4a155e13a340dc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/primary-theme/obsidian";
        };
    }
);
    "prime" = (
    let
        baseUrl = "https://github.com/rivea0/obsidian-prime.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "prime";
        version = "8ff49d1af73df06c1a1b30e2a646926ec568f557";
        outputHash = "sha256-YqwMfQQg5ABWYXsj+KkmjNdR+e0rzMXmKKVJMn9MkgQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8ff49d1af73df06c1a1b30e2a646926ec568f557 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/rivea0/obsidian-prime";
        };
    }
);
    "prism" = (
    let
        baseUrl = "https://github.com/damiankorcz/Prism-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "prism";
        version = "d1b0b2fad28778b96a19777020e42961e293d90a";
        outputHash = "sha256-Dz8N2NBa87vA2l0JjpRFbSh3lLuH2jPLDWokvYkkj0w=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d1b0b2fad28778b96a19777020e42961e293d90a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/damiankorcz/Prism-Theme";
        };
    }
);
    "proper-dark" = (
    let
        baseUrl = "https://github.com/lukasbach/obsidian-proper-dark.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "proper-dark";
        version = "280bb6c5ec31814dd1b80770203a2d906d678722";
        outputHash = "sha256-J5eOe6iPOC097ugitMO5+EILcuyVXnM67Z1qLX2iE9w=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=280bb6c5ec31814dd1b80770203a2d906d678722 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lukasbach/obsidian-proper-dark";
        };
    }
);
    "protocol-blue" = (
    let
        baseUrl = "https://github.com/PrettyBoyCosmo/ProtocolBlue.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "protocol-blue";
        version = "0a7b5d36ceb3a5143ac10844acd95821792d7690";
        outputHash = "sha256-9ZAiP0Z/yogXULOo8DJuB6JaiI24TKyecIWsg7cmKCM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0a7b5d36ceb3a5143ac10844acd95821792d7690 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/PrettyBoyCosmo/ProtocolBlue";
        };
    }
);
    "prussian-blue" = (
    let
        baseUrl = "https://github.com/EddieTheEd/Prussian-Blue.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "prussian-blue";
        version = "321e2ac9ca353bb51917d1d84a5408268917d64e";
        outputHash = "sha256-auIU7qxB3TFbZ0QxhUGuxNL2szf1szA1VvkPrj0hoqg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=321e2ac9ca353bb51917d1d84a5408268917d64e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/EddieTheEd/Prussian-Blue";
        };
    }
);
    "publisher" = (
    let
        baseUrl = "https://github.com/aidanastridge/Publisher.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "publisher";
        version = "d9f8b89f8635d4b6cbc936c61eb8f60475f45510";
        outputHash = "sha256-veLCmFFZcE4+4sv2tZE54U3XRiA/VKJ/ltn1NrsV33E=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d9f8b89f8635d4b6cbc936c61eb8f60475f45510 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/aidanastridge/Publisher";
        };
    }
);
    "pure" = (
    let
        baseUrl = "https://github.com/lychileng/Obsidian-Theme-Pure.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pure";
        version = "77aefc0dc79e23b63a3c06204ee3d0156797236b";
        outputHash = "sha256-hZ7F8/YsYRC8S+gGq4ZvFCx2J1slAvbnHk1VdFMgFKU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=77aefc0dc79e23b63a3c06204ee3d0156797236b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lychileng/Obsidian-Theme-Pure";
        };
    }
);
    "purple-aurora" = (
    let
        baseUrl = "https://github.com/AndreasStandar/Obsidian-Theme---Purple-Aurora.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "purple-aurora";
        version = "3d9f09d1306bac627f2424dcba8408c7e27287bc";
        outputHash = "sha256-QcCFuqMioZaSiybz60xyHLv8d5y3aTpboWaHiX5jL04=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3d9f09d1306bac627f2424dcba8408c7e27287bc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"<Serice\", \"minAppVersion\": \"0.16.0\", \"name\": \"Purple Aurora\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/AndreasStandar/Obsidian-Theme---Purple-Aurora";
        };
    }
);
    "purple-owl" = (
    let
        baseUrl = "https://github.com/zacharyc/purple-owl-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "purple-owl";
        version = "c681b11d46e25ff8ae6fb0df3416b4f37f5130a5";
        outputHash = "sha256-9WbPpVZuzDNnH6gaQKB3k2rIV0yR8icYZeWXRHXciT0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c681b11d46e25ff8ae6fb0df3416b4f37f5130a5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zacharyc/purple-owl-theme";
        };
    }
);
    "pxld" = (
    let
        baseUrl = "https://github.com/Lina674/Pxld-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "pxld";
        version = "d284ed6048da9df2ebdb6f9a421571d0be63e9c4";
        outputHash = "sha256-9bLx8KC93oAmD6eZUCNTszCjW9uL5nK8fNTneYS12qs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d284ed6048da9df2ebdb6f9a421571d0be63e9c4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Lina674/Pxld-Obsidian-Theme";
        };
    }
);
    "qlean" = (
    let
        baseUrl = "https://github.com/froq0/Qlean.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "qlean";
        version = "4c8f43722c36192048df7ccaef40fbc3522982fc";
        outputHash = "sha256-mBzppDx1TzF1R+SOtFLZAgw9iLaMQwhLxpYrvv6Rlvg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4c8f43722c36192048df7ccaef40fbc3522982fc --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/froq0/Qlean";
        };
    }
);
    "quietus" = (
    let
        baseUrl = "https://github.com/yuanzhixiang/obsidian-theme-quietus.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "quietus";
        version = "d0ab6461d8bce3890e14be3c2d096223f9808e03";
        outputHash = "sha256-dKZ2O5vCVqDy5p1jlQoh2PFMWE+p21stfkBN5jSWl+U=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d0ab6461d8bce3890e14be3c2d096223f9808e03 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/yuanzhixiang/obsidian-theme-quietus";
        };
    }
);
    "quillcode" = (
    let
        baseUrl = "https://github.com/theaayushpatel/quillcode.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "quillcode";
        version = "c81193a4c9f6a294d290d1013c6bbc4c05807ebb";
        outputHash = "sha256-wK7wxDmVvbmCQD8Yig/V6+mYkbh24z0RccOPZkR3ZSU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c81193a4c9f6a294d290d1013c6bbc4c05807ebb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/theaayushpatel/quillcode";
        };
    }
);
    "radiance" = (
    let
        baseUrl = "https://github.com/JabariD/obsidian-radiance.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "radiance";
        version = "eee7d00cd5c955b2c4437c8640c05365283e8f31";
        outputHash = "sha256-ZKNGkc7pUSo9p6YBvo7K4dTP38OSuO3mkYHDYRhPM7w=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=eee7d00cd5c955b2c4437c8640c05365283e8f31 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/JabariD/obsidian-radiance";
        };
    }
);
    "ravenloft" = (
    let
        baseUrl = "https://github.com/circkumflexx/obsidian-ravenloft-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ravenloft";
        version = "84c8f8aabd5f329fc66a0bb9707af3698d3f4dac";
        outputHash = "sha256-SKWeGMthPMyiF3GidAXdy2mvs2EYKw++631Cw7FXW3U=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=84c8f8aabd5f329fc66a0bb9707af3698d3f4dac --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/circkumflexx/obsidian-ravenloft-theme";
        };
    }
);
    "red-graphite" = (
    let
        baseUrl = "https://github.com/seanwcom/Red-Graphite-for-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "red-graphite";
        version = "b03e01004c108e33d7c81735d74385913980c0b2";
        outputHash = "sha256-m+GGuiy32wD4PeJR3Her0xE/f11OVbZpW9G5w/W8Ys4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b03e01004c108e33d7c81735d74385913980c0b2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/seanwcom/Red-Graphite-for-Obsidian";
        };
    }
);
    "red-shadow" = (
    let
        baseUrl = "https://github.com/DKLiberty/Red-Shadow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "red-shadow";
        version = "69c01c7dccc01a02374fe51bc519003712bdf00b";
        outputHash = "sha256-6QdCXHHR59Vt2RTk1gAJ2vad7EiQGFQoFK+mDVVxHwk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=69c01c7dccc01a02374fe51bc519003712bdf00b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/DKLiberty/Red-Shadow";
        };
    }
);
    "red-shift-oled-blue-light-filter" = (
    let
        baseUrl = "https://github.com/norderan/RedShift-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "red-shift-oled-blue-light-filter";
        version = "6a9868fbf21931615bc12cb4c02a6a8452ed729b";
        outputHash = "sha256-PMC+OS6OPcKKydmoW1vQPz+eHcqoT92KtIUCMSAV8ME=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6a9868fbf21931615bc12cb4c02a6a8452ed729b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/norderan/RedShift-obsidian-theme";
        };
    }
);
    "refined-default" = (
    let
        baseUrl = "https://github.com/FaisalTamanoJr/Refined-Default.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "refined-default";
        version = "96436eb6355e826e89cfc509129b69ab319e2abe";
        outputHash = "sha256-PdWxlSuZIrVJ3RiiU4XdnPTgs6uEC+3KSCIqoea3a8g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=96436eb6355e826e89cfc509129b69ab319e2abe --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/FaisalTamanoJr/Refined-Default";
        };
    }
);
    "reshi" = (
    let
        baseUrl = "https://github.com/contrapasso3/Reshi.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "reshi";
        version = "879377560c0661822d3cb217165c998f9c231812";
        outputHash = "sha256-a1ESZRNZ0G0hjmMR4ZsYcQzMr2GSCUezUeIZtD9nsj8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=879377560c0661822d3cb217165c998f9c231812 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/contrapasso3/Reshi";
        };
    }
);
    "retro-windows" = (
    let
        baseUrl = "https://github.com/codeisconfusing/retro-windows-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "retro-windows";
        version = "b703589c7b2819040ed5dd547fbb93ac0724839a";
        outputHash = "sha256-uBronnlBUL1/AWDx1/ZSRurSDGBaFcze/t5jMknrr/o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b703589c7b2819040ed5dd547fbb93ac0724839a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/codeisconfusing/retro-windows-obsidian";
        };
    }
);
    "retro-notes" = (
    let
        baseUrl = "https://github.com/sr-campelo/retronotes.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "retro-notes";
        version = "3666fdc601d3d6e63c8f26056fb0f9d25813c922";
        outputHash = "sha256-2sWWV3xZaTooVZjOALQPpZoYkds/mbb+HUm2zUvk22A=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3666fdc601d3d6e63c8f26056fb0f9d25813c922 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sr-campelo/retronotes";
        };
    }
);
    "retro-os-98" = (
    let
        baseUrl = "https://github.com/ThePharaohArt/Obsidian-RetroOS98.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "retro-os-98";
        version = "81059fd1151f2d4308f5cddc83ae8f8ac99b340e";
        outputHash = "sha256-lZiOPV88HSla0x2kirRS61ie1Sy/2NGO6QNQk8bsVhI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=81059fd1151f2d4308f5cddc83ae8f8ac99b340e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ThePharaohArt/Obsidian-RetroOS98";
        };
    }
);
    "retroma" = (
    let
        baseUrl = "https://github.com/emarpiee/Retroma.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "retroma";
        version = "e07d4fb39263a0d006aad90c76f6dabfd88dbfd2";
        outputHash = "sha256-J0jRkioGRa+EDfITv6QGCECG6i3/ry81Xs6TI3lZNfM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e07d4fb39263a0d006aad90c76f6dabfd88dbfd2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/emarpiee/Retroma";
        };
    }
);
    "reverie" = (
    let
        baseUrl = "https://github.com/santiyounger/Reverie-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "reverie";
        version = "9e0bf769617d5ebc174663f0430d73d981ef7f0c";
        outputHash = "sha256-Z5JMcO7Hi3ySkAtrzkMte09FFb19WruJaFYTZtpudrs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9e0bf769617d5ebc174663f0430d73d981ef7f0c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Santi Younger\", \"minAppVersion\": \"0.16.0\", \"name\": \"Reverie\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/santiyounger/Reverie-Obsidian-Theme";
        };
    }
);
    "rezin" = (
    let
        baseUrl = "https://github.com/NicolasGHS/Rezin-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rezin";
        version = "0eafaeceb75e17f0c4ea00a041b5b47be474163d";
        outputHash = "sha256-O/S3T6S2GZ64tCE313EkF/5+ippGpbQn3E6ZbKeg6SE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0eafaeceb75e17f0c4ea00a041b5b47be474163d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/NicolasGHS/Rezin-theme";
        };
    }
);
    "ribbons" = (
    let
        baseUrl = "https://github.com/ddspog/obsidian-ribbons-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ribbons";
        version = "eebaf106182c2f08226689d69f84f57b1c304a07";
        outputHash = "sha256-SkWL1qpJBUcrCOW9vTQZCiQcrwY2xVeFON9XfZyWHWM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=eebaf106182c2f08226689d69f84f57b1c304a07 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ddspog/obsidian-ribbons-theme";
        };
    }
);
    "rift" = (
    let
        baseUrl = "https://github.com/rifts-obsidian-laboratory/rift.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rift";
        version = "09f89f3fbe2f6d8168ed50943762caec1c90b6c9";
        outputHash = "sha256-26Ck3qKpgTVoMvypWmocOZ80u09C+AdmJWdJUld0jsE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=09f89f3fbe2f6d8168ed50943762caec1c90b6c9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/rifts-obsidian-laboratory/rift";
        };
    }
);
    "rmaki" = (
    let
        baseUrl = "https://github.com/luke-rmaki/rmaki-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rmaki";
        version = "1c4d2133b5d5d939c9b23a19a1afef9a5ec888c6";
        outputHash = "sha256-rNLFLdFTrFwdrfmP72gyjM+JesQOjEJ+usTNbcS509k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1c4d2133b5d5d939c9b23a19a1afef9a5ec888c6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Luke Ruokaismaki\", \"minAppVersion\": \"0.16.0\", \"name\": \"Rmaki\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/luke-rmaki/rmaki-obsidian";
        };
    }
);
    "robsi" = (
    let
        baseUrl = "https://github.com/Riffaells/Robsi.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "robsi";
        version = "c6d902b33c67a2fa4043f54906c9a6e97ba074ea";
        outputHash = "sha256-R0n8LP2eD58QxweYfE4bJMzjZLDeuZpaldgqroX+i+o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c6d902b33c67a2fa4043f54906c9a6e97ba074ea --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Riffaells/Robsi";
        };
    }
);
    "rose-pine" = (
    let
        baseUrl = "https://github.com/rose-pine/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rose-pine";
        version = "8891e95ad19d6f2a0c2bfdd740387a5437dfc0b7";
        outputHash = "sha256-yXIDfJtPqJUQgNPwIfSulG2lhTXlAEewyoNDISb3MjA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8891e95ad19d6f2a0c2bfdd740387a5437dfc0b7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/rose-pine/obsidian";
        };
    }
);
    "rose-red" = (
    let
        baseUrl = "https://github.com/tu2-atmanand/RoseRed-ObsidianTheme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rose-red";
        version = "564e918a270dc7bf87950108d7d5d4487c3bc6fb";
        outputHash = "sha256-uhRVzyf8GefMQNa2eC68RVIPwb9ibUN9uAivgXHDLcY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=564e918a270dc7bf87950108d7d5d4487c3bc6fb --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tu2-atmanand/RoseRed-ObsidianTheme";
        };
    }
);
    "rosé-pine" = (
    let
        baseUrl = "https://github.com/sspaeti/obsidian_rose_pine.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rosé-pine";
        version = "852b5471c9feb1aa5b14582ab7210077fe1b6d32";
        outputHash = "sha256-CQJh2M6TzM2LhviQwPlsjeHOwyFGnOA0sMvIoUTwmo8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=852b5471c9feb1aa5b14582ab7210077fe1b6d32 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/sspaeti/obsidian_rose_pine";
        };
    }
);
    "rosé-pine-moon" = (
    let
        baseUrl = "https://github.com/mimishahzad/rose-pine-moon-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "rosé-pine-moon";
        version = "0726d27ca678f20d6af0b4b56903c2cff7b69280";
        outputHash = "sha256-0Qu1+Ej3zrW46t4LkYmbgNXoQ7RD3yg8DxCeBm9NVq8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0726d27ca678f20d6af0b4b56903c2cff7b69280 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"mimishahzad\", \"minAppVersion\": \"0.16.0\", \"name\": \"Rosé Pine Moon\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mimishahzad/rose-pine-moon-obsidian";
        };
    }
);
    "royal-velvet" = (
    let
        baseUrl = "https://github.com/caro401/royal-velvet.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "royal-velvet";
        version = "e53fdf6edf2468c4ff0fbf1ea0828ab2ca243f0f";
        outputHash = "sha256-7J+/UCCos0zfVcbEReSr/Ynf04AhCnAX902E7r9WAuQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e53fdf6edf2468c4ff0fbf1ea0828ab2ca243f0f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/caro401/royal-velvet";
        };
    }
);
    "ruby" = (
    let
        baseUrl = "https://github.com/gracejoseph1236/obsidian-ruby.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ruby";
        version = "d9921d8313000e326ead285973983cbdb5b8d260";
        outputHash = "sha256-YM/kCk6Pps+LhWCH2bjb+qDcHu97N5bsfNSOJZe+7Bc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d9921d8313000e326ead285973983cbdb5b8d260 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Piglet1236\", \"minAppVersion\": \"0.16.0\", \"name\": \"Ruby\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/gracejoseph1236/obsidian-ruby";
        };
    }
);
    "salem" = (
    let
        baseUrl = "https://github.com/SalemElatar/salem-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "salem";
        version = "c543c0aa787d5eebe6c60288d17fa0c03791678a";
        outputHash = "sha256-dHu3TEcOV28a74/AIZeFTiwounHYCHGNSU29uDN186g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c543c0aa787d5eebe6c60288d17fa0c03791678a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/SalemElatar/salem-obsidian-theme";
        };
    }
);
    "sad-machine-druid" = (
    let
        baseUrl = "https://github.com/Halftroll0/Sad-Machine-Druid.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sad-machine-druid";
        version = "39b83b80f5f5202165fe458dc4b38335d84cba9a";
        outputHash = "sha256-sxlTCINW5VVw98xSP4QzmKm4PmqLJruuiHFEkv2ux8A=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=39b83b80f5f5202165fe458dc4b38335d84cba9a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Halftroll0/Sad-Machine-Druid";
        };
    }
);
    "sakurajima" = (
    let
        baseUrl = "https://github.com/Daiki48/sakurajima.obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sakurajima";
        version = "b97ec38d70bb93dcaf081a704c5e0025b4beea12";
        outputHash = "sha256-EPn+9/Isnv8ZsdZjk35IvTPadJ424fcYsxSicS6fpWA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b97ec38d70bb93dcaf081a704c5e0025b4beea12 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Daiki48/sakurajima.obsidian";
        };
    }
);
    "sanctum" = (
    let
        baseUrl = "https://github.com/jdanielmourao/obsidian-sanctum.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sanctum";
        version = "ac69e5992a66d2aeabb30d8c2d90c636d155fc25";
        outputHash = "sha256-BTztXJ8IBpJolKBdtyM+abiBUMR6DtG44tv99NMgfU0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ac69e5992a66d2aeabb30d8c2d90c636d155fc25 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/jdanielmourao/obsidian-sanctum";
        };
    }
);
    "sanctum-reborn" = (
    let
        baseUrl = "https://github.com/antoKeinanen/obsidian-sanctum-reborn.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sanctum-reborn";
        version = "8f32b4e10373183f2c242555562b8391684c85c8";
        outputHash = "sha256-TaVKPVPepdySKw4AqsMmiOgGZdhozEtuxefySIItXRA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8f32b4e10373183f2c242555562b8391684c85c8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/antoKeinanen/obsidian-sanctum-reborn";
        };
    }
);
    "sandover" = (
    let
        baseUrl = "https://github.com/eliz-abeth/sandover.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sandover";
        version = "7b8b61eaf22438970a9c991e2282e3219cd41fb3";
        outputHash = "sha256-c2+vd932pzMqEBKU+5fCLZRPnH0yaGobrvRwZ2oLmog=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7b8b61eaf22438970a9c991e2282e3219cd41fb3 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/eliz-abeth/sandover";
        };
    }
);
    "sandstorm" = (
    let
        baseUrl = "https://github.com/jaysan0/obsidian-sandstorm.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sandstorm";
        version = "7c1150b27637e1495ff629a1d59602acfa01ec2a";
        outputHash = "sha256-uidWJusR0A+/4V3/NteX/HUQt05wbh+z0dBmshS+Mcc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7c1150b27637e1495ff629a1d59602acfa01ec2a --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/jaysan0/obsidian-sandstorm";
        };
    }
);
    "sanguine" = (
    let
        baseUrl = "https://github.com/Satchelmouth/Obsidian-Theme-Sanguine.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sanguine";
        version = "e14ae6b78546b759e88c13feae72e88d5c2ff00c";
        outputHash = "sha256-lWOuR5hTLQ/oBTN/fNFvcmoV2CrRnM9cd5UTKU4hXNs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e14ae6b78546b759e88c13feae72e88d5c2ff00c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Satchelmouth/Obsidian-Theme-Sanguine";
        };
    }
);
    "sea-glass" = (
    let
        baseUrl = "https://github.com/KStew1017/obsidian-sea-glass-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sea-glass";
        version = "beca51a280d53f48ed4428e37d03dd1f75001e4c";
        outputHash = "sha256-OWkWcsKRklansqvRzkejzNlbe3tTRyrmtkblWjEEwHA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=beca51a280d53f48ed4428e37d03dd1f75001e4c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/KStew1017/obsidian-sea-glass-theme";
        };
    }
);
    "seamless-view" = (
    let
        baseUrl = "https://github.com/GustavoSZ124/Obsidian-Theme-Seamless-View.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "seamless-view";
        version = "cde1532a0c71d05bd42184cea6e1c2e3ccd50b61";
        outputHash = "sha256-6A9lwuw4yyaQ1CfAAC0USLxvKfwunvbmzNxZz5ZPsPc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cde1532a0c71d05bd42184cea6e1c2e3ccd50b61 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GustavoSZ124/Obsidian-Theme-Seamless-View";
        };
    }
);
    "sei" = (
    let
        baseUrl = "https://github.com/iwa/Sei.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sei";
        version = "e0fc9e910e8ce0587c7bca015dcef386db127885";
        outputHash = "sha256-5m1GVmMUdkxGBynN3ci+WCFQ/4zL1N4WEvkni3Uot9k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e0fc9e910e8ce0587c7bca015dcef386db127885 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/iwa/Sei";
        };
    }
);
    "serenity" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/Obsidian-Serenity.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "serenity";
        version = "8cb957c6eae134a4e68b4377941f9d8e02a93618";
        outputHash = "sha256-g3QgRhv4pcN3qYpdYrUMUP3IMBY6g3/yLHFzXXcofHQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8cb957c6eae134a4e68b4377941f9d8e02a93618 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/Obsidian-Serenity";
        };
    }
);
    "serif" = (
    let
        baseUrl = "https://github.com/GodlyMan-bit/Serif.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "serif";
        version = "d7261743100140c6aca16186a0a134a02ef38113";
        outputHash = "sha256-P/XHIvOYC4Dlps+G++lUW37WnYSXtHySSrU3V4utdQ4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d7261743100140c6aca16186a0a134a02ef38113 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GodlyMan-bit/Serif";
        };
    }
);
    "serika" = (
    let
        baseUrl = "https://github.com/Warrobot10/Serika-for-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "serika";
        version = "2aa894dcd6f230b8c18aa21d22330e425762f982";
        outputHash = "sha256-PMe8StHqfyOBGZxkL099rjNssq+GY4OXgC/0cfVZf1U=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2aa894dcd6f230b8c18aa21d22330e425762f982 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Warrobot10/Serika-for-obsidian";
        };
    }
);
    "shade-sanctuary" = (
    let
        baseUrl = "https://github.com/Elevict/Shade-Sanctuary.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "shade-sanctuary";
        version = "8aa1fcde7b3ab7be6475dc0bb978bf156d617779";
        outputHash = "sha256-BMDo13D1/stAUiM2JNpHWUxN5eXhljJuWdfPjcOdpmg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8aa1fcde7b3ab7be6475dc0bb978bf156d617779 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Elevict/Shade-Sanctuary";
        };
    }
);
    "shadeflow" = (
    let
        baseUrl = "https://github.com/artorias305/obsidian-shadeflow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "shadeflow";
        version = "8340718f734477da532d03be9a91981392b87a1d";
        outputHash = "sha256-fF4CkI0oO2TgGTwm+kRtWjWCAblaCuqyS5Me5d5cB5Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8340718f734477da532d03be9a91981392b87a1d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/artorias305/obsidian-shadeflow";
        };
    }
);
    "shiba-inu" = (
    let
        baseUrl = "https://github.com/faroukx/Obsidian-shiba-inu-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "shiba-inu";
        version = "8288abad7a8dd13c971bea7f52aeb0a62dd3aac7";
        outputHash = "sha256-eJrl18Yxk5xCYwXnYTuxq55tpRNcr2RJXjjGwJ9g8TQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8288abad7a8dd13c971bea7f52aeb0a62dd3aac7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/faroukx/Obsidian-shiba-inu-theme";
        };
    }
);
    "shimmering-focus" = (
    let
        baseUrl = "https://github.com/chrisgrieser/shimmering-focus.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "shimmering-focus";
        version = "f0895f734f35fe3bdf38560729614ad6e80752c5";
        outputHash = "sha256-eee1jbOQfrlAoqs0lKxMPukJ4ZUGvM5WUG3652tGifQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f0895f734f35fe3bdf38560729614ad6e80752c5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/chrisgrieser/shimmering-focus";
        };
    }
);
    "simple" = (
    let
        baseUrl = "https://github.com/diegoeis/simple-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "simple";
        version = "3f10c405e7c2da7251323c78610108f326765c08";
        outputHash = "sha256-5vJve9wSY2Os1haNr7LAUqvIzeNbfE/O+YjP+T3wCo4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3f10c405e7c2da7251323c78610108f326765c08 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/diegoeis/simple-obsidian";
        };
    }
);
    "simplicity" = (
    let
        baseUrl = "https://github.com/Thiews/obsidian-simplicity.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "simplicity";
        version = "55a1571fe99948475ea37454c6416b1d9d30b804";
        outputHash = "sha256-BYpVRk81gPkw3SEHG+KqM7HcmMxeTi4VMR6h4nII/Xg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=55a1571fe99948475ea37454c6416b1d9d30b804 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Thiews/obsidian-simplicity";
        };
    }
);
    "simply-colorful" = (
    let
        baseUrl = "https://github.com/LorenzoPegorari/SimplyColorful.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "simply-colorful";
        version = "cd0e6823d4b3046c8076ff93ceb30b39d5671bc8";
        outputHash = "sha256-/1R+EbOInUsI4JAZCZXn4MTW7h0IiudDfJeCgvTHzhU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cd0e6823d4b3046c8076ff93ceb30b39d5671bc8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/LorenzoPegorari/SimplyColorful";
        };
    }
);
    "sodalite" = (
    let
        baseUrl = "https://github.com/tomzorz/Sodalite.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sodalite";
        version = "a995d82ca00ac9c63f5be00a2fc05ebbd238bff0";
        outputHash = "sha256-oOFOxExsRwk1PWgB8soy//9lc0GCwczNfSCYhpJ02V0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a995d82ca00ac9c63f5be00a2fc05ebbd238bff0 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tomzorz/Sodalite";
        };
    }
);
    "solarized" = (
    let
        baseUrl = "https://github.com/harmtemolder/obsidian-solarized.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "solarized";
        version = "11cc702755b912abcedbebb6328a32ffddc03eff";
        outputHash = "sha256-zy9T7oiBh5MPwp/21WfXA7LsJbxtiD7exXxigRHArH0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=11cc702755b912abcedbebb6328a32ffddc03eff --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/harmtemolder/obsidian-solarized";
        };
    }
);
    "soli-deo-gloria" = (
    let
        baseUrl = "https://github.com/GodlyMan-bit/SoliDeoGloria.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "soli-deo-gloria";
        version = "9ff32f52b15b5e3d4daf5c525a88ab8c02a3674b";
        outputHash = "sha256-bENbkDFOh95JYLM/hp8qfZ2K8vKcCJn93BTrMzQuteQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9ff32f52b15b5e3d4daf5c525a88ab8c02a3674b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GodlyMan-bit/SoliDeoGloria";
        };
    }
);
    "soloing" = (
    let
        baseUrl = "https://github.com/isax785/obsidian-soloing.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "soloing";
        version = "17560e7bcc4a2baafdbf570fe1ea9a3f5c2454a1";
        outputHash = "sha256-fOCYapxU2ao6UN9PmcPRs8S7wm17PdjQLDJHv9Nj6fw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=17560e7bcc4a2baafdbf570fe1ea9a3f5c2454a1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/isax785/obsidian-soloing";
        };
    }
);
    "soothe" = (
    let
        baseUrl = "https://github.com/AwesomeDog/obsidian-soothe.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "soothe";
        version = "5cf272131890f257a7e875cd650bed1cac10dc8d";
        outputHash = "sha256-5ikZqZyjNkJa8wNFfPy5c2jiViE0OhNsR4gv39/vx0s=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5cf272131890f257a7e875cd650bed1cac10dc8d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/AwesomeDog/obsidian-soothe";
        };
    }
);
    "space" = (
    let
        baseUrl = "https://github.com/bhappen/obsidian-space.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "space";
        version = "c2e7423ce18d557e07e53c4674b61c48783c76f6";
        outputHash = "sha256-9XOApx0cYgc0IcHsTuMiZns/e3cJjWdg9UBv87R9V0Y=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c2e7423ce18d557e07e53c4674b61c48783c76f6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bhappen/obsidian-space";
        };
    }
);
    "sparkling-day" = (
    let
        baseUrl = "https://github.com/isax785/obsidian-sparkling-day.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sparkling-day";
        version = "0dbcf1f4bcf660db7b17b6b0c376f9e3511cd71b";
        outputHash = "sha256-qEemV8n21rrnR8Omvtev1ZhZFzmkhWOagJe9f/IVEwA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0dbcf1f4bcf660db7b17b6b0c376f9e3511cd71b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/isax785/obsidian-sparkling-day";
        };
    }
);
    "sparkling-night" = (
    let
        baseUrl = "https://github.com/isax785/obsidian-sparkling-night.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sparkling-night";
        version = "00ac5c18f5a46938736a80d25c05df3c38180248";
        outputHash = "sha256-49Lx6E32/le4ZzCKzp6deoXKla5eAzwrLU5fJofTUdY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=00ac5c18f5a46938736a80d25c05df3c38180248 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/isax785/obsidian-sparkling-night";
        };
    }
);
    "spectrum-blue" = (
    let
        baseUrl = "https://github.com/SandmansDreams/Spectrum-Blue.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "spectrum-blue";
        version = "f886feb00a79369ab99de7396357a7ff7e338335";
        outputHash = "sha256-+V0WFol2gWqHbFRUt1y8qDSA6QwYUTyKQMeaPdFdmjQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f886feb00a79369ab99de7396357a7ff7e338335 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/SandmansDreams/Spectrum-Blue";
        };
    }
);
    "spectrum-plus" = (
    let
        baseUrl = "https://github.com/anotherlusitano/SpectrumPlus.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "spectrum-plus";
        version = "5d3e10e4a204815087787c3f6763d84ff93760b5";
        outputHash = "sha256-/WZ7cKnc0x5jbj35EBF3K7ilzu0ULzq+xKmH1bkbyOM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5d3e10e4a204815087787c3f6763d84ff93760b5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"João Ribeiro\", \"minAppVersion\": \"0.16.0\", \"name\": \"SpectrumPlus\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/anotherlusitano/SpectrumPlus";
        };
    }
);
    "spring" = (
    let
        baseUrl = "https://github.com/MateusHenriquegringo/spring-theme-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "spring";
        version = "4bf36ba96f2ded19fa44451c78cb0dbc305c3411";
        outputHash = "sha256-Ss0Ovz4AUIeFJ5bBLju8KFySdiD13QIRJcnZnf+aHpg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4bf36ba96f2ded19fa44451c78cb0dbc305c3411 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/MateusHenriquegringo/spring-theme-obsidian";
        };
    }
);
    "spy-terminal" = (
    let
        baseUrl = "https://github.com/IchiroFukuda/spy-terminal-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "spy-terminal";
        version = "da79f42de8e27ac1100322e4ad8cee57d1fc27f4";
        outputHash = "sha256-IEk++j5IyG2uMIAMDc3H3tv63lN2cucaKypyYPTmC30=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=da79f42de8e27ac1100322e4ad8cee57d1fc27f4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/IchiroFukuda/spy-terminal-theme";
        };
    }
);
    "strict" = (
    let
        baseUrl = "https://github.com/Nikolai2038/strict-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "strict";
        version = "3966385fdcd9caf209a6bd767a9267f37120a4f5";
        outputHash = "sha256-1y0jeRidZobVxN55OcBEJrCKvmLyyiQBclfe8sTlWiA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3966385fdcd9caf209a6bd767a9267f37120a4f5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Nikolai2038/strict-obsidian-theme";
        };
    }
);
    "subtlegold" = (
    let
        baseUrl = "https://github.com/kartik-karz/subtlegold-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "subtlegold";
        version = "34141371be3922b9ec4aebca0da1cc47d54488c2";
        outputHash = "sha256-AdmlvtqPlxOD+RW4uiMMahvr4UqwTSgGX2/OgrlV7Jw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=34141371be3922b9ec4aebca0da1cc47d54488c2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"karz\", \"minAppVersion\": \"0.16.0\", \"name\": \"Subtlegold\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kartik-karz/subtlegold-obsidian";
        };
    }
);
    "suddha" = (
    let
        baseUrl = "https://github.com/dxcore35/Suddha-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "suddha";
        version = "b53096bb68ae3b04247176fef98fc2fa5b853010";
        outputHash = "sha256-yx7UvHFCW3frBimk7dycWUYwV3+fXrwX3O+vI5J5Xcw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b53096bb68ae3b04247176fef98fc2fa5b853010 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"dxcore35\", \"minAppVersion\": \"0.16.0\", \"name\": \"Suddha\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dxcore35/Suddha-theme";
        };
    }
);
    "sunbather" = (
    let
        baseUrl = "https://github.com/babidisrc/obsidian-sunbather.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "sunbather";
        version = "6672bbbb15791181f4c3fdf15f3f6ad4278102b1";
        outputHash = "sha256-lfkkZ6Q2Kb5eWbcMZuvE/CgHFgc1k5QmyBRdtSV4j+8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=6672bbbb15791181f4c3fdf15f3f6ad4278102b1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/babidisrc/obsidian-sunbather";
        };
    }
);
    "synth-wave" = (
    let
        baseUrl = "https://github.com/marcoluzi/obsidian-synthwave.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "synth-wave";
        version = "d0f3ac2e17a682047631f496d6b790033b02a0b4";
        outputHash = "sha256-OoaTD/Rc8yFi5eiNRQJDJxJ76mCnpMFUnqu8q2F6wxM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d0f3ac2e17a682047631f496d6b790033b02a0b4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Marco Luzi\", \"minAppVersion\": \"0.16.0\", \"name\": \"SynthWave\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/marcoluzi/obsidian-synthwave";
        };
    }
);
    "synthwave-84" = (
    let
        baseUrl = "https://github.com/G2Jose/synthwave-84-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "synthwave-84";
        version = "49aa37fbe7f09d33d4347551a8cd4541f1f9a6fa";
        outputHash = "sha256-ZyiSlt4L/HeLfTguycNTjqFaszrvMLgzmt//ZXcKN50=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=49aa37fbe7f09d33d4347551a8cd4541f1f9a6fa --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/G2Jose/synthwave-84-obsidian-theme";
        };
    }
);
    "tech001" = (
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tech001";
        version = "ef57c2c2a1468bcf20ac1766d4a1314a28a69415";
        outputHash = "sha256-gAgOP13BfCZYoG9qJb3XdkIfR0ZbwAtaCWi3y2GMU3E=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.curl pkgs.mktemp];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            mkdir -p $out
            curl -sfL -o $out/manifest.json ""
            curl -sfL -o $out/theme.css ""
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/volodinroman/obsidian-tech001-theme";
        };
    }
);
    "terminal" = (
    let
        baseUrl = "https://github.com/zcysxy/Obsidian-Terminal-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "terminal";
        version = "0df33cf273541f60ea3a255138aac6751c7c26ac";
        outputHash = "sha256-+Y2zmQftUtk2ZytIJ5hhMi1nu8HrLlQXwRBRTs0dlrc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0df33cf273541f60ea3a255138aac6751c7c26ac --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"zcysxy\", \"minAppVersion\": \"0.16.0\", \"name\": \"Terminal\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zcysxy/Obsidian-Terminal-Theme";
        };
    }
);
    "terminal2-k" = (
    let
        baseUrl = "https://github.com/isax785/Terminal2K.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "terminal2-k";
        version = "0ec4b6de8b75bbcdb042051091dbdd9b50d5d717";
        outputHash = "sha256-b7Mq5qvQePUHBN2Lrt3uicnk9EprzS6fQ6iBb/XA1vA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0ec4b6de8b75bbcdb042051091dbdd9b50d5d717 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/isax785/Terminal2K";
        };
    }
);
    "terra-flow" = (
    let
        baseUrl = "https://github.com/dubefab/obsidian-TerraFlow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "terra-flow";
        version = "e40479b05191732f7dc95285d97b80f5e8e37a12";
        outputHash = "sha256-fmdMn7DmpWnQ22aGsoBpeCMBEH6Pzl5yQeZznOzvBMM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e40479b05191732f7dc95285d97b80f5e8e37a12 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dubefab/obsidian-TerraFlow";
        };
    }
);
    "theme-that-shall-not-be-named" = (
    let
        baseUrl = "https://github.com/ChopTV/Obsidian-Theme-That-Shall-Not-Be-Named.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "theme-that-shall-not-be-named";
        version = "fd4a3c9ffe0b4ef499c71d6692a22150330c4b98";
        outputHash = "sha256-iQlUFyIGxKipyqy0ebb21MAU1iiaH2Xh55Oa/2s+zUM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fd4a3c9ffe0b4ef499c71d6692a22150330c4b98 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Chop the Viking\", \"minAppVersion\": \"0.16.0\", \"name\": \"Theme-That-Shall-Not-Be-Named\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ChopTV/Obsidian-Theme-That-Shall-Not-Be-Named";
        };
    }
);
    "things" = (
    let
        baseUrl = "https://github.com/colineckert/obsidian-things.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "things";
        version = "7672a83a43bda2df2832820edd1591c89f8b62e9";
        outputHash = "sha256-J/3SP9CQMoEwWl4K70kBHyFnjbDzV134bRVUX6QjyYA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7672a83a43bda2df2832820edd1591c89f8b62e9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/colineckert/obsidian-things";
        };
    }
);
    "things-3" = (
    let
        baseUrl = "https://github.com/MrParalloid/obsidian-things.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "things-3";
        version = "1a19de37e8795a19c7bb6474490fa8ff4876b15e";
        outputHash = "sha256-+md199/FZGRzzePplxIpduHhM1aVdNalcNXI1SWBkjQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1a19de37e8795a19c7bb6474490fa8ff4876b15e --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/MrParalloid/obsidian-things";
        };
    }
);
    "tiniri" = (
    let
        baseUrl = "https://github.com/vladstudio/tiniri-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tiniri";
        version = "2405360cf5f70bbc122d6b7e9f5258e37a2321c8";
        outputHash = "sha256-GVwAXCYgkK3eiAmu4HtFR/cU+mhbozXgJiVZtHn9kv4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2405360cf5f70bbc122d6b7e9f5258e37a2321c8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/vladstudio/tiniri-obsidian";
        };
    }
);
    "tokyo-night" = (
    let
        baseUrl = "https://github.com/tcmmichaelb139/obsidian-tokyonight.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tokyo-night";
        version = "8266c8650227aabcb4f79b7ad460546b068748d4";
        outputHash = "sha256-HGnJyaILjhD4oBgYypYv0OlULb212LC6g5OBnfF12Ck=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8266c8650227aabcb4f79b7ad460546b068748d4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tcmmichaelb139/obsidian-tokyonight";
        };
    }
);
    "tokyo-night-simple" = (
    let
        baseUrl = "https://github.com/danarnold/tokyonight-simple.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tokyo-night-simple";
        version = "a8233232241a1ae454246a4d21d2a51cd8f90fa5";
        outputHash = "sha256-2Y8UYp+DnXgHkajD4VncXdYyPTN/BG0x1OsyHlPh8QQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a8233232241a1ae454246a4d21d2a51cd8f90fa5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/danarnold/tokyonight-simple";
        };
    }
);
    "tokyo-night-storm" = (
    let
        baseUrl = "https://github.com/arozx/obsidian_tokyo-night-storm.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tokyo-night-storm";
        version = "99c8ab070804c85c7d6b66aafcaeb2a18af4e6f7";
        outputHash = "sha256-4jfxmtp2/VLaFo3msKLYmUhbP2FAmNfCrXKz5GxpIaU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=99c8ab070804c85c7d6b66aafcaeb2a18af4e6f7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/arozx/obsidian_tokyo-night-storm";
        };
    }
);
    "tom-s-theme" = (
    let
        baseUrl = "https://github.com/tomkaygames/Tom-s-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tom-s-theme";
        version = "127489b0f7fee8376b0bf3c7c5d8e17635b7dc90";
        outputHash = "sha256-pc0s35HnDbTsGmnU8iTKOpk4IXOsR2H0gH/5ZT8KGbU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=127489b0f7fee8376b0bf3c7c5d8e17635b7dc90 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tomkaygames/Tom-s-Theme";
        };
    }
);
    "tomorrow" = (
    let
        baseUrl = "https://github.com/deudz/obsidian-tomorrow-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tomorrow";
        version = "5dbc6a613269184905a0195461444bfe4ea54d81";
        outputHash = "sha256-05iL5b0idk8T2zkNIfPYwJtU3QPuogP7SFpZH3ExlYM=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5dbc6a613269184905a0195461444bfe4ea54d81 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/deudz/obsidian-tomorrow-theme";
        };
    }
);
    "tomorrow-night-bright" = (
    let
        baseUrl = "https://github.com/gbraad-obsidian/obsidian-tomorrow-night-bright-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tomorrow-night-bright";
        version = "3366e353ad1ce5f7e136171f404e79f1ffa90868";
        outputHash = "sha256-WRg3Dte+vpfndXKgMi2z454iNUiHAKtbMOmqUqea4BI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=3366e353ad1ce5f7e136171f404e79f1ffa90868 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Gerard Braad\", \"minAppVersion\": \"0.16.0\", \"name\": \"Tomorrow Night Bright\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/gbraad-obsidian/obsidian-tomorrow-night-bright-theme";
        };
    }
);
    "trace-labs" = (
    let
        baseUrl = "https://github.com/humandecoded/Trace-Labs-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "trace-labs";
        version = "f6b569ebd266020e82b1c9856b25a9234006f961";
        outputHash = "sha256-So9vyW5T+eqE+DgK3VB5QtlMHm0bSi6co3w/e4CUpZc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f6b569ebd266020e82b1c9856b25a9234006f961 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/humandecoded/Trace-Labs-Obsidian-Theme";
        };
    }
);
    "traffic-lights" = (
    let
        baseUrl = "https://github.com/elliotboyd/obsidian-traffic-lights.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "traffic-lights";
        version = "63d3cfea81ec7354877ed072f501caa25e87978c";
        outputHash = "sha256-uK8PQHVQ1hzkIGgBNjZ8mCdhN1RwWHrU9UE60BrQ5fI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=63d3cfea81ec7354877ed072f501caa25e87978c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Boyd\", \"minAppVersion\": \"0.16.0\", \"name\": \"Traffic Lights\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/elliotboyd/obsidian-traffic-lights";
        };
    }
);
    "transient" = (
    let
        baseUrl = "https://github.com/GeorgeAzma/Transient.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "transient";
        version = "1fcd34b41a62342943b286d086a0a754222441dd";
        outputHash = "sha256-o0aWIoWdVT+QHMdMM5dbeDoF9hZkD0jyty3SOFTgIyc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1fcd34b41a62342943b286d086a0a754222441dd --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GeorgeAzma/Transient";
        };
    }
);
    "true-black" = (
    let
        baseUrl = "https://github.com/kraasch/true-black.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "true-black";
        version = "126a0475b98115197eb7ac1783dafbb1bf1627d4";
        outputHash = "sha256-g5ubjBgR1PnyREE59s/0pObqLBysqbkf0Y7zHYIdxfU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=126a0475b98115197eb7ac1783dafbb1bf1627d4 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/kraasch/true-black";
        };
    }
);
    "typewriter" = (
    let
        baseUrl = "https://github.com/crashmoney/obsidian-typewriter.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "typewriter";
        version = "1d8a28282e709ed0bcff4e3e11e94cb4758127e1";
        outputHash = "sha256-yKZFueUUFlrbahiOzmXY/h/U+bcHtLuWHEq5wzw4W/w=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=1d8a28282e709ed0bcff4e3e11e94cb4758127e1 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/crashmoney/obsidian-typewriter";
        };
    }
);
    "typomagical" = (
    let
        baseUrl = "https://github.com/hungsu/typomagical-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "typomagical";
        version = "20307faae7075aebc7c42dbdfd7bab5792d2fa04";
        outputHash = "sha256-/7Ydwrveg0w1HWRgHaZjH7fJE6Zs036vckYDfUwr9QU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=20307faae7075aebc7c42dbdfd7bab5792d2fa04 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Hung-Su Nguyen\", \"minAppVersion\": \"0.16.0\", \"name\": \"Typomagical\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hungsu/typomagical-obsidian";
        };
    }
);
    "typora-vue" = (
    let
        baseUrl = "https://github.com/ZekunC/Obsidian-Typora-Vue-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "typora-vue";
        version = "97d4fb65bbbb94a0615a2bd50d2aee118209944d";
        outputHash = "sha256-j/Vu3nps1drYl/EY8/ABMgYWAnH+F0MFWiaojsfIO6g=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=97d4fb65bbbb94a0615a2bd50d2aee118209944d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ZekunC/Obsidian-Typora-Vue-Theme";
        };
    }
);
    "tyrone-neon" = (
    let
        baseUrl = "https://github.com/tyronejosee/tyrone-neon.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "tyrone-neon";
        version = "2b49ba0270a06c9d51ee88e23ab3d01a2939add5";
        outputHash = "sha256-OJltc3/t3BXCFYZ68gfIy3vLxxBwptHNM3VYOEzD7cc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2b49ba0270a06c9d51ee88e23ab3d01a2939add5 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tyronejosee/tyrone-neon";
        };
    }
);
    "ukiyo" = (
    let
        baseUrl = "https://github.com/technerium/obsidian-ukiyo.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ukiyo";
        version = "e3115884c6fd30cff56381aee9eccffa1504b2e7";
        outputHash = "sha256-1TpoYJr5riMyQ9yxDDVe3lAbhdO6pmFxUhJRblpVEYU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e3115884c6fd30cff56381aee9eccffa1504b2e7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/technerium/obsidian-ukiyo";
        };
    }
);
    "ultra-lobster" = (
    let
        baseUrl = "https://github.com/7368697661/Ultra-Lobster.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ultra-lobster";
        version = "d1a3ee26d1cb388a5c953681c35b434ca8b74531";
        outputHash = "sha256-cIIm/okEjfbIRu/rE45eJHFY6DQDDA+zEz1uZbglyVs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=d1a3ee26d1cb388a5c953681c35b434ca8b74531 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/7368697661/Ultra-Lobster";
        };
    }
);
    "underwater" = (
    let
        baseUrl = "https://github.com/Seniblue/Underwater.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "underwater";
        version = "10c8de32aa8249f70cd409c24d266beb6df23a2d";
        outputHash = "sha256-JyCCQxuZu80lJytiQ3M1o/t7hHnK8grN+YYgcOlDhqE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=10c8de32aa8249f70cd409c24d266beb6df23a2d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Seniblue/Underwater";
        };
    }
);
    "universitario" = (
    let
        baseUrl = "https://github.com/wulflo/obsidian-3Sumaq.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "universitario";
        version = "a5426b8ceaabb29717e8acfdfe431a12b24254f7";
        outputHash = "sha256-BIv7Lq7iwMqiyROGjruJQhWYV0l8ejvrXtzLNhvc9Mc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a5426b8ceaabb29717e8acfdfe431a12b24254f7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/wulflo/obsidian-3Sumaq";
        };
    }
);
    "ursa" = (
    let
        baseUrl = "https://github.com/obsidian-ezs/obsidian-ursa.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ursa";
        version = "f5cfc5ab4ce62f59aa01410c5b70a2b1a85194dd";
        outputHash = "sha256-ZTyLCqzNSduafZO7ci0UGaImBW1n+DkFWNc0RGB99pU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f5cfc5ab4ce62f59aa01410c5b70a2b1a85194dd --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"ezs\", \"minAppVersion\": \"0.16.0\", \"name\": \"Ursa\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/obsidian-ezs/obsidian-ursa";
        };
    }
);
    "vanilla-amoled" = (
    let
        baseUrl = "https://github.com/SakuraIsayeki/vanilla-amoled-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vanilla-amoled";
        version = "7aaa2aec0ad4ab820c23c1fc6b02aeb751c72d7f";
        outputHash = "sha256-Lve05fD2DTckMBz0Nmx7xk2xX+h1RLugsAi42nWuzWs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7aaa2aec0ad4ab820c23c1fc6b02aeb751c72d7f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/SakuraIsayeki/vanilla-amoled-theme";
        };
    }
);
    "vanilla-amoled-color" = (
    let
        baseUrl = "https://github.com/Sskki-exe/vanilla-amoled-theme-color.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vanilla-amoled-color";
        version = "a45620f1e0d563109f11acad8f7eeb8065954c9b";
        outputHash = "sha256-x1UmTvI4LKUFjahRHNU0DUcMJbtDTVa+Zaaz12K1M4k=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a45620f1e0d563109f11acad8f7eeb8065954c9b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Sskki-exe/vanilla-amoled-theme-color";
        };
    }
);
    "vanilla-palettes" = (
    let
        baseUrl = "https://github.com/GnRlLeclerc/Vanilla-Theme-Palettes.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vanilla-palettes";
        version = "fa6bfa6a6abeba18ac2bf40b2fd82bd3b08ab004";
        outputHash = "sha256-Cq/XT/jwae0fQ277RMfevhBz/a4nKySdcSZvhdRoxrw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fa6bfa6a6abeba18ac2bf40b2fd82bd3b08ab004 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GnRlLeclerc/Vanilla-Theme-Palettes";
        };
    }
);
    "vauxhall" = (
    let
        baseUrl = "https://github.com/CyanVoxel/vauxhall-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vauxhall";
        version = "55de6c8b3d1dccda92196522ba7e446ffd5c02d7";
        outputHash = "sha256-N+s4R4hnJnupnmA29NeCJyYeNGMlBiQA+Xv+mXeiXQA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=55de6c8b3d1dccda92196522ba7e446ffd5c02d7 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/CyanVoxel/vauxhall-obsidian";
        };
    }
);
    "velocity" = (
    let
        baseUrl = "https://github.com/Gonzalo-D-Sales/obsidian-velocity.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "velocity";
        version = "e4d1511400cf862b470dcb57324f7fb68896dcf2";
        outputHash = "sha256-O0KXkcR/0yfN1b96v0fnwpm4uw1UNpx3fvV9SOPRRho=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e4d1511400cf862b470dcb57324f7fb68896dcf2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Gonzalo-D-Sales/obsidian-velocity";
        };
    }
);
    "velvet-moon" = (
    let
        baseUrl = "https://github.com/Quinta0/Velvet-Moon.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "velvet-moon";
        version = "2fb7a9d00467f3ccf864c7c099e4072cc83c99de";
        outputHash = "sha256-Of+n5cAOCrF2kbbmI1v+ZHxTgTSc3VErZpScDOX2BFg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=2fb7a9d00467f3ccf864c7c099e4072cc83c99de --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/Velvet-Moon";
        };
    }
);
    "vercel-geist" = (
    let
        baseUrl = "https://github.com/en3sis/vercel-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vercel-geist";
        version = "f484d5daa1da973d10a2e4d9296b88339b5e116c";
        outputHash = "sha256-I1ul2YRpFwsszoymqgwOkrwZ7JHhPvWkzn9sPw6Adbo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f484d5daa1da973d10a2e4d9296b88339b5e116c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/en3sis/vercel-obsidian";
        };
    }
);
    "vesnea-vibe" = (
    let
        baseUrl = "https://github.com/seavalanche/vesnea-obsidian-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vesnea-vibe";
        version = "434b88da05e94470e591539ee480eb493838eb8b";
        outputHash = "sha256-SXn8IX3vcdYXR255qt/KLtYwy79MJpDQV7urgqbVfHg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=434b88da05e94470e591539ee480eb493838eb8b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/seavalanche/vesnea-obsidian-theme";
        };
    }
);
    "vesper" = (
    let
        baseUrl = "https://github.com/omarrashad/obsidian-vesper.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vesper";
        version = "bddbc7dc4ccc673792543224d1e6a62da9dbb6d9";
        outputHash = "sha256-Zj6P8zQUsUrJAW+/h8IRfuvSX36t58EDc0H19aBDFl8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=bddbc7dc4ccc673792543224d1e6a62da9dbb6d9 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/omarrashad/obsidian-vesper";
        };
    }
);
    "vibrant" = (
    let
        baseUrl = "https://github.com/JamesLemony/obsidian_vibrant.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vibrant";
        version = "c63c405a6b2360e7b2798a7d0d9bccbb49f7f0ee";
        outputHash = "sha256-PauNNvvuINl8fr4XFt1IF5/pswY1eYti1xY0+SCHTi4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c63c405a6b2360e7b2798a7d0d9bccbb49f7f0ee --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/JamesLemony/obsidian_vibrant";
        };
    }
);
    "vicious" = (
    let
        baseUrl = "https://github.com/zaheralmajed/vicious-theme-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vicious";
        version = "8a46212741d5beca548d18849d4617f85e887f32";
        outputHash = "sha256-n4e5ywuQdzVwIVfTDDJSHHEfjdXeO4DHijwQyPdEJOI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8a46212741d5beca548d18849d4617f85e887f32 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zaheralmajed/vicious-theme-obsidian";
        };
    }
);
    "violet-evening" = (
    let
        baseUrl = "https://github.com/aitaDev/Violet-Evening-for-Obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "violet-evening";
        version = "f0c723748f0e71e3b3d0e93297a40ae3e151aa44";
        outputHash = "sha256-k7Q1bhiocyUdT3JClKnp56AvKlscQ86nUSrFKLqdjC4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f0c723748f0e71e3b3d0e93297a40ae3e151aa44 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"aitaDev\", \"minAppVersion\": \"0.16.0\", \"name\": \"Violet Evening\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/aitaDev/Violet-Evening-for-Obsidian";
        };
    }
);
    "virgo" = (
    let
        baseUrl = "https://github.com/loveminimal/obsidian-theme-virgo.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "virgo";
        version = "9014b5b25d6f2418c01568ba5761338e9ee4475c";
        outputHash = "sha256-+YE/XduSsdoDPRViCP6Zwc43tTv3igXtfH74VZ29BKo=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9014b5b25d6f2418c01568ba5761338e9ee4475c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/loveminimal/obsidian-theme-virgo";
        };
    }
);
    "viridian" = (
    let
        baseUrl = "https://github.com/mulfok/obsidian-viridian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "viridian";
        version = "0fc5a8833ff193594ee38b94c0f0b9da960456d8";
        outputHash = "sha256-FBMiRtdY2wa/6Njsv0eqYu9Tw+1W2FgOor1tQ9GHV8A=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=0fc5a8833ff193594ee38b94c0f0b9da960456d8 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"mulfok\", \"minAppVersion\": \"0.16.0\", \"name\": \"Viridian\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mulfok/obsidian-viridian";
        };
    }
);
    "vortex" = (
    let
        baseUrl = "https://github.com/abhimangs/obsidian-vortex.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "vortex";
        version = "5f6b3e7cc0a7d1bef8ac78ca53ad343193c73b41";
        outputHash = "sha256-ZkvRazKOXTCjnjoiLNzg6MJ/hrl5nKA5rpCUWjzFKxI=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5f6b3e7cc0a7d1bef8ac78ca53ad343193c73b41 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/abhimangs/obsidian-vortex";
        };
    }
);
    "w95" = (
    let
        baseUrl = "https://github.com/phchang/W95.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "w95";
        version = "4a601d2b57cedb9d342309ac8ba9620fcb34470c";
        outputHash = "sha256-IenYHbQwZEf6ePjE2UmebVQ2F86cOcbNBLo7PDSj5iU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4a601d2b57cedb9d342309ac8ba9620fcb34470c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/phchang/W95";
        };
    }
);
    "wy-console" = (
    let
        baseUrl = "https://github.com/Satchelmouth/Obsidian-Theme-WYConsole.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "wy-console";
        version = "b5d933b90faed13b7ac9b07afc3ec1037f87647b";
        outputHash = "sha256-qYJEB/ryoNnFMjPF0z8EDHrmABhkqZcUFdKRiidmzQk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b5d933b90faed13b7ac9b07afc3ec1037f87647b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Satchelmouth/Obsidian-Theme-WYConsole";
        };
    }
);
    "wasp" = (
    let
        baseUrl = "https://github.com/santiyounger/Wasp-Obsidian-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "wasp";
        version = "b42649be4ae4e2a13e32f7ba3db05666486a9246";
        outputHash = "sha256-F21OWF3SvuVTKr7Jce8DFTZy0/tYxEFVwbK7F6e/dgs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b42649be4ae4e2a13e32f7ba3db05666486a9246 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Santi Younger\", \"minAppVersion\": \"0.16.0\", \"name\": \"Wasp\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/santiyounger/Wasp-Obsidian-Theme";
        };
    }
);
    "wikipedia" = (
    let
        baseUrl = "https://github.com/Bluemoondragon07/Wikipedia-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "wikipedia";
        version = "b3187a105ebc4c28693777d228fd1707d3c01c06";
        outputHash = "sha256-7n2tWGOie9W94Jy4N6ZNsRz1IdpdDQR7BS4owGVMqtY=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b3187a105ebc4c28693777d228fd1707d3c01c06 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Bluemoondragon07/Wikipedia-Theme";
        };
    }
);
    "willemstad" = (
    let
        baseUrl = "https://github.com/tingmelvin/willemstad-x.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "willemstad";
        version = "273ebbf6173b9f5bb6e70825cec04641f4f90834";
        outputHash = "sha256-cpXNFUueJpasCUjJrBg/D2f/t4E2RPrdlqPSz88fOc0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=273ebbf6173b9f5bb6e70825cec04641f4f90834 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/tingmelvin/willemstad-x";
        };
    }
);
    "winter-spices" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-winter-spices.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "winter-spices";
        version = "e221ed18c77471f1aab4751c3974c6beaf4e6399";
        outputHash = "sha256-qDzL9kIzuWPZJuDtJMGTW61lGAuwvSKDrdfPw/+t/Rw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=e221ed18c77471f1aab4751c3974c6beaf4e6399 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-winter-spices";
        };
    }
);
    "wombat" = (
    let
        baseUrl = "https://github.com/hush-hush/obsidian_wombat.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "wombat";
        version = "489acd9231a0157b0008775eaa6aca892d058d96";
        outputHash = "sha256-o2h1r18aE7pTKM6aTcOBvW6TVyZZcSe7AdltZI6cs1A=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=489acd9231a0157b0008775eaa6aca892d058d96 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"hush-hush\", \"minAppVersion\": \"0.16.0\", \"name\": \"Wombat\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/hush-hush/obsidian_wombat";
        };
    }
);
    "wyrd" = (
    pkgs.stdenvNoCC.mkDerivation {
        pname = "wyrd";
        version = "6b1a13c3509c4893283d8a0ffe496ce9ee172ccb";
        outputHash = "sha256-HtUK+YciwNVMbvVessmopxpfkTpwyxyfV8g2XIiwQnw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.curl pkgs.mktemp];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            mkdir -p $out
            curl -sfL -o $out/manifest.json ""
            curl -sfL -o $out/theme.css ""
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/curio-heart/obsidian-wyrd";
        };
    }
);
    "xscriptor" = (
    let
        baseUrl = "https://github.com/xscriptor/obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "xscriptor";
        version = "7b897953d996ec66b294f858ce525248fcf74596";
        outputHash = "sha256-gyjZg/g0Z8CfjKKs461hpjnQgK40w/J8zNLa9hUvZrU=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=7b897953d996ec66b294f858ce525248fcf74596 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/xscriptor/obsidian";
        };
    }
);
    "yin-and-yang" = (
    let
        baseUrl = "https://github.com/chetachiezikeuzor/Yin-and-Yang-Theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "yin-and-yang";
        version = "cfefe053ae7806a768ba54d551c2a076b3d6c6df";
        outputHash = "sha256-nXr598gYGQAymlakhk4zK/qHYZKCTTdVbi8YluT+9Io=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cfefe053ae7806a768ba54d551c2a076b3d6c6df --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"Chetachi E.\", \"minAppVersion\": \"0.16.0\", \"name\": \"Yin and Yang\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/chetachiezikeuzor/Yin-and-Yang-Theme";
        };
    }
);
    "yue" = (
    let
        baseUrl = "https://github.com/GixoXYZ/YueObsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "yue";
        version = "fb138cf9b31396b20110c32082a76bd5d6cd8d1d";
        outputHash = "sha256-QZjJwp15MjSIKYzQeZ8XZbh4okNDFuaw55JsQMJ1TBw=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=fb138cf9b31396b20110c32082a76bd5d6cd8d1d --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GixoXYZ/YueObsidian";
        };
    }
);
    "zario" = (
    let
        baseUrl = "https://github.com/nazarioricardo/zario-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "zario";
        version = "8b96213deb23f8c194c990c2fdfbda4a41828dea";
        outputHash = "sha256-W46Rf6fzgiUt4/xtY+ZODNKqyum/GEEVWzjkWdiQYew=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=8b96213deb23f8c194c990c2fdfbda4a41828dea --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/nazarioricardo/zario-obsidian";
        };
    }
);
    "zen" = (
    let
        baseUrl = "https://github.com/laughmaker/Zen.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "zen";
        version = "77b33e645c0e1e1239b3a196482e88eec5c0a2db";
        outputHash = "sha256-9XQ9xYIY3hRWOdqHQUpylrPlqERrYco3jaJEFkWcwIs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=77b33e645c0e1e1239b3a196482e88eec5c0a2db --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/laughmaker/Zen";
        };
    }
);
    "zenburn" = (
    let
        baseUrl = "https://github.com/danyim/obsidian-zenburn.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "zenburn";
        version = "490a43f278f542d77a7709274148e24a34407083";
        outputHash = "sha256-CFpPlwGbcCIZ0ETKL/McgaSD/EoMN75HiHd/ELMnpqQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=490a43f278f542d77a7709274148e24a34407083 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/danyim/obsidian-zenburn";
        };
    }
);
    "aged-whisky" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-aged-whisky.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "aged-whisky";
        version = "44f7c01cf226d95dbfb7f65212eef96b00450755";
        outputHash = "sha256-3t96LY3grxZS7gVgvpP/mGg+PIwB2mzUNG8Dh5aqTu0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=44f7c01cf226d95dbfb7f65212eef96b00450755 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-aged-whisky";
        };
    }
);
    "chiaroscuroflow" = (
    let
        baseUrl = "https://github.com/Quinta0/chiaroscuroflow.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "chiaroscuroflow";
        version = "f5a558783032e77cd1d9983ed55ba69d04004784";
        outputHash = "sha256-2l97OxhfnIPyc6AByDtNUaQ9Wj4o1hzOZhDX0ZHwoX8=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=f5a558783032e77cd1d9983ed55ba69d04004784 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/Quinta0/chiaroscuroflow";
        };
    }
);
    "dashboard" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-dashboard.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "dashboard";
        version = "4f28f855e5a9ba92ca7fdb709481030507359c98";
        outputHash = "sha256-BlVg3NFdcNE9VkqQqLjj84fOAJMK8fQQoPvKwKEISbs=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4f28f855e5a9ba92ca7fdb709481030507359c98 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-dashboard";
        };
    }
);
    "deep-submerge" = (
    let
        baseUrl = "https://github.com/incantatem2/Obsidian-deep-submerge.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "deep-submerge";
        version = "92d20e2a83c416440ccaed7a9e87611c6c572d05";
        outputHash = "sha256-rxUs+kHIKWg0cepoAEh5w7E33qAnEhHH4cEDDst1pq0=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=92d20e2a83c416440ccaed7a9e87611c6c572d05 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/incantatem2/Obsidian-deep-submerge";
        };
    }
);
    "deeper-work" = (
    let
        baseUrl = "https://github.com/lucas-fern/obsidian-deeper-work-theme.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "deeper-work";
        version = "a1d507de12b2af634e03f73248c4765c3e768f72";
        outputHash = "sha256-thQx6uX+7fuXCun6sjpW/nuQz39sm6mvUKw/ubuWCrg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=a1d507de12b2af634e03f73248c4765c3e768f72 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/lucas-fern/obsidian-deeper-work-theme";
        };
    }
);
    "evangelion" = (
    let
        baseUrl = "https://github.com/xero/evangelion.obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "evangelion";
        version = "4c3cb1d03ca70119a878d403e8c3abe8c6b48218";
        outputHash = "sha256-+Cm3gqEPyR3QNaVSmfkSbi64ox4GEPeucu2qoFA1ZBQ=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=4c3cb1d03ca70119a878d403e8c3abe8c6b48218 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/xero/evangelion.obsidian";
        };
    }
);
    "flexcyon" = (
    let
        baseUrl = "https://github.com/bladeacer/flexcyon.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "flexcyon";
        version = "9fa158d8ab188038121dca9d1e39bf22db80cebf";
        outputHash = "sha256-Wbx2z124GrCS0nwNOXqFXjASbvn5r2pZSoZv54WwUbc=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=9fa158d8ab188038121dca9d1e39bf22db80cebf --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/bladeacer/flexcyon";
        };
    }
);
    "halcyon" = (
    let
        baseUrl = "https://github.com/dbarenholz/halcyon-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "halcyon";
        version = "b6d0c0c4d54a78a62002a9929016c26e5ef5da53";
        outputHash = "sha256-fv6QCKSDwm5vaywYZUpz9RActvuX0VM9En+RQAAHetE=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b6d0c0c4d54a78a62002a9929016c26e5ef5da53 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/dbarenholz/halcyon-obsidian";
        };
    }
);
    "i-a-writer" = (
    let
        baseUrl = "https://github.com/mrowa44/obsidian-ia-writer.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "i-a-writer";
        version = "c18dc8786770aba6946af8a6fe2afba67270327c";
        outputHash = "sha256-55jyPraFM+FrCspJ9J2V4j+CGf1A2ie4wlQlBjsLi1o=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=c18dc8786770aba6946af8a6fe2afba67270327c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/mrowa44/obsidian-ia-writer";
        };
    }
);
    "i-b-writer" = (
    let
        baseUrl = "https://github.com/whereiswhere/iB-Writer.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "i-b-writer";
        version = "5bb3e5cf1cfae436815c5de0e9fd420b749711f3";
        outputHash = "sha256-UetThZR2zED2OpwHqETDi7RB64+JCGok7CWbBPtZ1Xk=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=5bb3e5cf1cfae436815c5de0e9fd420b749711f3 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/whereiswhere/iB-Writer";
        };
    }
);
    "ion" = (
    let
        baseUrl = "https://github.com/zamsyt/obsidian-ion.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "ion";
        version = "ca93a73baade4239b79ff5ab210e2ab2024fed2b";
        outputHash = "sha256-7ZgjnU++MK8V+F/F9m1RTPKWX4B+Ysewd0d8T1aHkG4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=ca93a73baade4239b79ff5ab210e2ab2024fed2b --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/zamsyt/obsidian-ion";
        };
    }
);
    "mono-black-monochrome-charcoal" = (
    let
        baseUrl = "https://github.com/ZeChArtiahSaher/obsidian-mono-black.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "mono-black-monochrome-charcoal";
        version = "884bd53e68e8a98fa9ceb9d3546d893fc2a03e6c";
        outputHash = "sha256-LraNLS5yUQq07UcV9Ap5wwfZaa5QURrFqgS/U7rb/S4=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=884bd53e68e8a98fa9ceb9d3546d893fc2a03e6c --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/ZeChArtiahSaher/obsidian-mono-black";
        };
    }
);
    "monochro-you" = (
    let
        baseUrl = "https://github.com/GuiMar10/monochroYou.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "monochro-you";
        version = "25bb1646325ffd6447e955896245dfdb2c414a97";
        outputHash = "sha256-qeTy+aDWRGslPXe2nbwRcgXLkDVhOuOjNGT20OuUz14=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=25bb1646325ffd6447e955896245dfdb2c414a97 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/GuiMar10/monochroYou";
        };
    }
);
    "nobb" = (
    let
        baseUrl = "https://github.com/buluw/nobb-obsidian.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "nobb";
        version = "cb8ccc2e5fe657f3895219ba71f11c1db5d0c3d2";
        outputHash = "sha256-0mf25rR+eCtlhfPN8Wxk8YKNf738vNoxc8c2QwMEUKA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=cb8ccc2e5fe657f3895219ba71f11c1db5d0c3d2 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/buluw/nobb-obsidian";
        };
    }
);
    "obsidian-ia" = (
    let
        baseUrl = "https://github.com/rcvd/obsidian_ia.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "obsidian-ia";
        version = "37b78a79e78a2300a8bbc190e942f4aa2612587f";
        outputHash = "sha256-9wZ2OZdVffATkFxh7VDcx7nUDdgymeBAJHTLUC7u+rA=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=37b78a79e78a2300a8bbc190e942f4aa2612587f --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/obsidian.css $out/theme.css
            echo "{\"author\": \"rcvd\", \"minAppVersion\": \"0.16.0\", \"name\": \"obsidian_ia\", \"version\": \"0.0.0\""}" > $out/manifest.json
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/rcvd/obsidian_ia";
        };
    }
);
    "s-qdth-one" = (
    let
        baseUrl = "https://github.com/KeithLerner/ObsidianMDsQdthOne.git";
    in
    pkgs.stdenvNoCC.mkDerivation {
        pname = "s-qdth-one";
        version = "b6ae5a21b779ea466d7bfbf7be707de3923b06b6";
        outputHash = "sha256-FNl2F193PJpfZb1EjJnAEiaGGSMwIjbCwal9ut65NJg=";
        outputHashMode = "recursive";
        outputHashAlgo = "sha256";

        nativeBuildInputs = [pkgs.mktemp pkgs.git];
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        phases = ["installPhase"];
        installPhase = ''
            temp="$(mktemp -d)"
            GIT_SSL_NO_VERIFY=true git clone --revision=b6ae5a21b779ea466d7bfbf7be707de3923b06b6 --depth=1 ${baseUrl} $temp/archive
            mkdir -p $out
            cp $temp/archive/manifest.json $out/manifest.json
            cp $temp/archive/theme.css $out/theme.css
            rm -rf $temp
        '';
        meta = {
            description = '''';
            homepage = "https://github.com/KeithLerner/ObsidianMDsQdthOne";
        };
    }
);
}