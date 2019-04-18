.PHONY: all clean

DIST_DIR=dist

all: thesis 

watch:
	latexmk -quiet -bibtex -pvc -f -pdf \
		-pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" \
		-output-directory=$(DIST_DIR) thesis

thesis:
	mkdir -p $(DIST_DIR)
	pdflatex --output-directory=$(DIST_DIR) $@
	bibtex $(DIST_DIR)/$@
	pdflatex --output-directory=$(DIST_DIR) $@

clean:
	rm -rf $(DIST_DIR)
