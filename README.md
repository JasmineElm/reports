# Generic Assignment Template

This repo contains my tools to make writing an academic document a little easier.

## Writing

+ Write the report in [the code directory](code/)
  + Single or multiple `*.md` files can be used.
+ Add references to [references.bib](code/references.bib)
+ Add images used in the report to [figures](code/figures)

## Rendering

```text
Simplifies building pdf / word documents 

Usage:
  ${_ME} [BUILD OPTIONS] [-o | --output [FILENAME]]

Build Options:
  -h | --help   Show this screen.
  -p | --pdf    build pdf
  -w | --word   build docx
  -c | --clean  clear the output directory
  -s | --silent remove any logs created
  -o | --output specify an output file name
```

## Suggested 3rd party apps

+ [Zotero](https://www.zotero.org)
+ [cookiecutter](https://drivendata.github.io/cookiecutter-data-science/)

_Note:_ You may want to drop this rep into a [cookiecutter](https://drivendata.github.io/cookiecutter-data-science/) project, replacing the blank ```reports``` directory.
