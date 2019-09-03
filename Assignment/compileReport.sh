#!/bin/sh
pandoc  report.md \
		--toc \
		--biblio=references.bib \
		--pdf-engine=xelatex \
		-o ../report.pdf \
		--template template/def.tex \
		--highlight-style=tango \
		--csl=template/harvard-cite-them-right.csl
