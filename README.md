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

*Note:* You may want to drop this rep into a
[cookiecutter](https://drivendata.github.io/cookiecutter-data-science/)
project, replacing the blank `reports` directory.

## Some Notes on the Setup Script

The setup script in [config](code/config/setup) intends to add sensible
templates, and install the prerequisites on systems that use `apt`. At
the time of writing, pandoc doesn't handle pagebreaks well in Word
documents, so the setup script installs the handy
[pandoc-docx-pagebreak](https://github.com/pandocker/pandoc-docx-pagebreak-py)
Python package. Modern Debian and Ubuntu reject system-wide
installations using `pip`; it's bad practice that can break packages
that should be installed via apt. To my knowledge, the pagebreak python
script is only available via pip, and it's not wholly practical to
create a `virtualenv` for each working document. That being the case,
I've used the anti-pattern of using the `--break-system-packages` flag.
I don't expect this *will* break system packages, but YMMV. The script
explicitly prompts before it will install this parser.
