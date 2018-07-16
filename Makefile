
BASENAME = paper

LATEX    = latex
PDFLATEX = pdflatex
# BIBTEX   = bibtex
BIBTEX   = bibtex

default: run_pdflatex

run_pdflatex: $(BASENAME).pdf
	@echo "Made $<"

#-------------------------------------------------------------------------------
# Specify the tex and bib file dependencies for running pdflatex
# If your bib files are not in the main directory adjust this target accordingly
#%.pdf: %.tex *.tex bib/*.bib
%.pdf:  %.tex *.tex *.bib
	$(PDFLATEX) $<
	-$(BIBTEX)  $(basename $<)
	$(PDFLATEX) $<
	$(PDFLATEX) $<
#-------------------------------------------------------------------------------


# Specify dependencies for running latex
#%.dvi: %.tex tex/*.tex bibtex/bib/*.bib
%.dvi:  %.tex *.tex *.bib
	$(LATEX)    $<
	-$(BIBTEX)  $(basename $<)
	$(LATEX)    $<
	$(LATEX)    $<


%.bbl:  %.tex *.bib
	$(LATEX) $<
	$(BIBTEX) $<
