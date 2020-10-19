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

all of this can be done in `vi` with much lower overhead.  To that
end, a [sample vim configuration](example_vimrc) is included.

## Suggested 3rd party apps

+ Zotero

<!-- TODO: I am a TODO -->
<!-- FIXME: I am a fixme -->

## Usage

+ Write the assignment in [report template](Assignment/report.md)
+ Add references to [references.bib](Assignment/references.bib)
+ Add images used in the report to [Images](Assignment/Images)
+ use vscode-pandoc to render the assignment to a pdf, or
  + open the terminal in vscode, and run the compile script `cd Assignment; ./compileReport.sh`
+ Iteratively write the assignment, and push to Github to ensure milestones of progress are not lost

Note: This repository is intended to be used  a [cookiecutter](https://drivendata.github.io/cookiecutter-data-science/) project, replacing the blank ```reports``` directory.
