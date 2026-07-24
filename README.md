# Generic assignment template

This repo contains a tools intended to make writing an academic document a little
easier.

## Writing

- Write the report in [the code directory](code/)
  - use one or more `*.md` files.
- Add references to [references.bib](code/references.bib)
- Add images to [figures](code/figures)
- update the [meta.yaml](code/config/meta.yaml)

## Rendering

``` text
Simplifies building pdf / word documents 

Usage:
  build [BUILD OPTIONS]

Build Options:
  -h | --help   Show this screen.
  -p | --pdf    build pdf
  -w | --word   build docx
  -c | --clean  clear the output directory
  -s | --silent remove any logs created
```

## Suggested third party applications

- [Zotero](https://www.zotero.org) manages references
- [vale-cli](https://github.com/errata-ai/vale) will help with style
- [vim-wordy](https://github.com/preservim/vim-wordy) will call out
  bad grammar


## Development Environment Setup

This project uses [Nix](https://nixos.org/) with flakes to manage dependencies reproducibly. The `flake.nix` provides a development shell that includes `pandoc`, a custom `texlive` environment with all required packages, `nodejs`, and `librsvg`.

To enter the development environment, run:

```bash
nix develop
```

Alternatively, you can use [direnv](https://direnv.net/) by creating a `.envrc` file containing `use flake`.

The first time you enter the Nix environment, it will automatically download required global templates, a CSL style, and lua filters into the correct folders.

## I just want to build the document

The build script can be called via the nix develop shell

```bash
nix develop --command ./build -p -w
```

## Additional Parameters

Additional configuration parameters can be found in
[meta.yaml](code/config/meta.yaml), and [defaults.yaml]
(code/config/defaults.yaml).  Meta.yaml defined document specific parameters,
while default.yaml contains the paramteres used to build the documents.  You probbaly
want to update meta.yaml.

## Contributing

Please feel free to open an issue or a pull request. Though this is a personal
project which I consider "feature complete", I welcome any suggestions for
features and fixes.

If raising a **pull request**, please ensure that the code
passes shellcheck and markdownlint. The code _must_ run on a fresh install of
Debian.  

If adding a new feature, please ensure that it is documented in this README, and
if applicable in the help text of the `build` script.

## License

The code in this repository is licensed under the MIT License. It does however
rely on third party software, which may have different licenses.

- [pandoc](https://pandoc.org/)
- [mermaid-js](https://mermaid-js.github.io/mermaid/)
- [nodejs](https://nodejs.org/)
- [librsvg2-bin](https://wiki.gnome.org/Projects/LibRsvg)
- the [cite them right](https://github.com/citation-style-language) CSL style
- [pagebreak.lua](https://github.com/pandoc-ext/pagebreak) by Albert Krewinkel, Benct Philip Jonsson

Additionally, the following latex styles are used:

- colortbl
- setspace
- fvextra 
- upquote
- lineno
- beamer
- footnotebackref
- koma-script
- soul
- pagecolor
- csquotes
- caption
- mdframed
- zref
- enumitem
- needspace
- sourcesanspro
- sourcecodepro
- titling
- bookmark
- framed
