# Makefile (pdflatex)
# Author:	Johannes Ranke <jranke@uni-bremen.de>
# Last Change: 2006 Apr 18
# based on the Makefiles of Tadeusz Pietraszek
# posted on his blog on March 24, 2006

TEXFILES=$(wildcard *.tex)
TARGETS=$(patsubst %.tex,%.pdf,$(TEXFILES))
DELFILES=kdtree.pdf

RERUN = "(There were undefined references|Rerun to get (cross-references|the bars) right|Table widths have changed. Rerun LaTeX.|Linenumber reference failed)"
RERUNBIB = "No file.*\.bbl|Citation.*undefined"

all: all-recursive $(TARGETS)

clean: clean-recursive
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg  \
          *.inx *.ps *.dvi *.toc *.out *.lot *~ *.lof *.ttt *.fff   \
          $(DELFILES)

all-recursive:
	for dir in $(wildcard *); do if [ -d $$dir ] && [ -f $$dir/Makefile ]; then cd $$dir; $(MAKE) all; cd ..; fi; done

clean-recursive:
	for dir in $(wildcard *); do if [ -d $$dir ] && [ -f $$dir/Makefile ]; then cd $$dir; $(MAKE) clean; cd ..; fi; done

%.pdf: %.tex
	pdflatex $<
	egrep -c $(RERUNBIB) $*.log && (bibtex $*;pdflatex $<); true
	egrep $(RERUN) $*.log && (pdflatex $<) ; true
	egrep $(RERUN) $*.log && (pdflatex $<) ; true
