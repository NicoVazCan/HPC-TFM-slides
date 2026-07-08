all: slides

slides: slides.tex
	xelatex -shell-escape slides
	bibtex slides
	xelatex -shell-escape slides
	xelatex -shell-escape slides

clean:
	rm -f *.log *.aux *.nav *.toc *.out *.snm *.vrb *.bbl *.blg *~
