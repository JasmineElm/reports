# Generic assignment template

This repo contains tools to make writing an academic document a little
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
- [vale-cli](https://github.com/errata-ai/vale) will call out bad
  grammar.
- [prettier](https://prettier.io/) can help automatically fix linting
  issues

## Some Notes on the Setup Script

The setup script in [config](code/config/setup) intends to add sensible
templates, and install the prerequisites on systems that use `apt`. If
you want the binaries without the filters, templates and csl, you can
run `./config/setup -e` then use the `cleanse_repo` script to remove the
extra files.  By default, the build script will call setup each time it is run.
This can be "switched off" by setting the "$_SETUP" variable in `build` to
something other than `true`
