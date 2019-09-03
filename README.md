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

## Suggested plugins

+ Markdown All in One
+ vscode-pandoc
+ Pandoc Citer
+ Code Spell Checker
+ Todo Tree
+ Word Count

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
+ Add research to [Research](Assignment/Research)
+ move any documents that are no longer required, but should be saved (e.g. illustrator files used to generate images) to [Detritus](Assignment/Detritus)

Note: This repository is intended to be used with an online file sync service (e.g. Dropbox), directories / files not directly required to generate the report (for example `Research/*`) have been added to `.gitignore` and will not be included in the git repository
