.PHONY: all clean

DIST_DIR=dist

all: thesis 

watch:
	mkdir -p $(DIST_DIR)
	latexmk -quiet -bibtex -pvc -f -pdf \
		-pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" \
		-output-directory=$(DIST_DIR) thesis

thesis:
	mkdir -p $(DIST_DIR)
	latexmk -quiet -bibtex -f -pdf \
		-pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" \
		-output-directory=$(DIST_DIR) thesis

clean:
	rm -rf $(DIST_DIR)
