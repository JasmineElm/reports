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


## Some Notes on the Setup Script

The setup script in [config](code/config/setup) copies global templates, installs a CSL style
and checks, and installs the binaries required in the [build](code/build) script.  The
script targets Debian, but should run on any system that uses `apt`.  Pandoc is
picked up directly from the GitHub repo; the version in apt can be relatively
old which I have found to be a problem.  

you want the binaries without the filters, templates and csl, you can
run `./config/setup -b` *By default, the [build](code/build) script will call
[setup](code/config/setup) each time it is run.* This can be "switched off" by
setting the "$_SETUP" variable in `build` to
something other than `true`

## Contributing

Please feel free to open an issue or a pull request. Though this is a personal
project which I consider "feature complete", I welcome any suggestions for
features and fixes.  I'be be especially interested in any suggestions for
'nix-ifying' the setup script.

If raising a **pull request**, please ensure that the code
passes shellcheck and markdownlint. The code _must_ run on a fresh install of
Debian.  

If adding a new feature, please ensure that it is documented in this README, and
if applicable in the help text of the `build` script.

## License

The code in this repository is licensed under the MIT License. It does however
rely on third party software, which may have different licenses.

- [pandoc](https://pandoc.org/)
- [tinytex](https://yihui.org/tinytex/)
- [mermaid-js](https://mermaid-js.github.io/mermaid/)
- [curl](https://curl.se/)
- [nodejs](https://nodejs.org/)
- [librsvg2-bin](https://wiki.gnome.org/Projects/LibRsvg)
- [jq](https://stedolan.github.io/jq/)
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
