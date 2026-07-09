all: slides.pdf

slides.pdf: slides.tex common.tex
	lualatex slides
	biber slides
	lualatex slides
	lualatex slides

clean:
	rm -rf *.log *.aux *.nav *.toc *.out *.snm *.vrb *.bbl *.blg *.bcf *.listing *run.xml _minted *~
