NAME=thesis
TEXSRCS=$(addsuffix .tex, abstract ch1)
BIBTEXSRCS=references.bib
USE_PDFLATEX=1
PDFLATEX=xelatex
CLEAN_FILES=$(NAME).lol
VIEWPDF=evince
#PDFLATEX_FLAGS=
include /usr/share/latex-mk/latex.gmk


.PHONY: spellcheck
spellcheck:
	hunspell -d en_US,el_GR -mt *.tex
