.PHONY: diploma.pdf all clean

all: diploma.pdf

%.tex: %.raw
	./raw2tex $< > $@
 
%.tex: %.dat
	./dat2tex $< > $@

diploma.pdf: diploma.tex
	latexmk -bibtex -pdf -pdflatex="xelatex" -use-make diploma.tex
 
clean:
	latexmk -bibtex -CA
