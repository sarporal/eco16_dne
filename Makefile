PAPER   = lustreeco16_dne_abstract
SOURCES = $(PAPER).tex
TEMPS = $(PAPER).aux $(PAPER).log
TARGETS = $(PAPER).pdf

default: pdf

pdf: $(SOURCES)
	pdflatex $(PAPER) || pdflatex $(PAPER) || bibtex $(PAPER) || pdflatex $(PAPER)

clean:
	for tmp in $(TEMPS) ; do $(RM) $$tmp ; done 
	for targ in $(TARGETS) ; do $(RM) $$targ ; done 
