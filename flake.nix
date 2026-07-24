{
  description = "Reports build environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        
        # Combine required texlive packages
        tex = pkgs.texliveSmall.withPackages (ps: with ps; [
          colortbl setspace fvextra upquote lineno beamer footnotebackref
          koma-script soul pagecolor csquotes caption mdframed zref
          enumitem needspace sourcesanspro sourcecodepro titling bookmark
          framed
        ]);

        reports-assets = pkgs.stdenv.mkDerivation {
          name = "reports-assets";
          nativeBuildInputs = [ pkgs.pandoc ];
          dontUnpack = true;
          pagebreak_lua = pkgs.fetchurl {
            url = "https://raw.githubusercontent.com/pandoc-ext/pagebreak/main/pagebreak.lua";
            sha256 = "e997b0155d8696153cbbda7b3e77da12da25b2696951093fecbfefde65c26ddb";
          };
          def_csl = pkgs.fetchurl {
            url = "https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-cite-them-right.csl";
            sha256 = "0ca3d2c7c881cd98cdd81098b5349f5921edf430498aa9a5a41918621cf7cc45";
          };
          buildPhase = ''
            mkdir -p $out
            cp $pagebreak_lua $out/pagebreak.lua
            cp $def_csl $out/def.csl
            # Pandoc may need HOME to be set to a writable directory in the nix build sandbox
            export HOME=$(mktemp -d)
            pandoc -o $out/def.docx --print-default-data-file reference.docx
            pandoc -D latex > $out/def.tex
          '';
          installPhase = ''
            # Handled in buildPhase
          '';
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            pandoc
            tex
            nodejs
            mermaid-cli
            librsvg # provides rsvg-convert (librsvg2-bin equivalent)
          ];
          shellHook = ''
            mkdir -p code/template
            ln -sf ${reports-assets}/pagebreak.lua code/template/pagebreak.lua
            ln -sf ${reports-assets}/def.csl code/template/def.csl
            ln -sf ${reports-assets}/def.docx code/template/def.docx
            ln -sf ${reports-assets}/def.tex code/template/def.tex
          '';
        };
      }
    );
}
