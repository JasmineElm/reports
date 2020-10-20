# Generic Assignment Template

This is a generic assignment template that allows academic documents to be written easily in Visual Studio Code

## Why?

VSCode allows for focussed writing in a way that traditional word processing packages arguably don't:

+ Markdown syntax is faster and less ambiguous
+ Zen Mode
+ Customisable editor colours
+ Syntax highlighting makes structuring more obvious
+ a corrupt Markdown file is easier to read/recover than a `docx`
+ managing thoughts and ideas is easy with `TODO`s
+ formatting can be done using external packages ensuring professional looking results with minimal effort
+ Plugins can manage spell-checking, referencing and so on.

## Prerequisites

+ Pandoc
+ LaTex-base
+ VS Code


## Suggested plugins

+ Markdown All in One
+ vscode-pandoc
+ Pandoc Citer
+ Code Spell Checker
+ Todo Tree
+ Word Count


__BUT!!__

all of this can be done in `vi` with much lower overhead.  To that end, a
[sample vim configuration](code/config/example_vimrc) is included.

## Suggested 3rd party apps

+ Zotero

## Writing

+ Write the report in [the code directory](code/)
  + Single or multiple `*.md` files can be used.
+ Add references to [references.bib](code/references.bib)
+ Add images used in the report to [figures](code/figures)


## Rendering

want a pdf? `./build`
Want a word document? `./build docx`
Want both word and pdf? `./build all`
Want to remove all the built files and their logs? `build clean`

Note: This repository is intended to be used  a [cookiecutter](https://drivendata.github.io/cookiecutter-data-science/) project, replacing the blank ```reports``` directory.
