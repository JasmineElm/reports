# Generic assignment template

This repo contains tools to make writing an academic document a little easier.

## Writing

+ Write the report in [the code directory](code/)
  + use one or more `*.md` files.
+ Add references to [references.bib](code/references.bib)
+ Add images to [figures](code/figures)
+ update the [meta.yaml](code/config/meta.yaml)

## Rendering

```text
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

+ [Zotero](https://www.zotero.org) manages references
+ [vale-cli](https://github.com/errata-ai/vale) will call out bad grammar.
+ [prettier](https://prettier.io/) can help automatically fix linting issues

_Note:_ You may want to drop this rep into a [cookiecutter](https://drivendata.github.io/cookiecutter-data-science/) project, replacing the blank ```reports``` directory.
