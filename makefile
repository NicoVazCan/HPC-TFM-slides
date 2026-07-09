default: slides.pdf
all: slides.pdf slides-notes.pdf

slides.pdf: slides.tex common.tex
	lualatex slides
	biber slides
	lualatex slides
	lualatex slides

slides-notes.pdf: slides.tex common.tex
	lualatex -jobname=slides-notes "\def\shownotes{1}\input{slides.tex}"
	biber slides-notes
	lualatex -jobname=slides-notes "\def\shownotes{1}\input{slides.tex}"
	lualatex -jobname=slides-notes "\def\shownotes{1}\input{slides.tex}"

clean:
	rm -rf *.log *.aux *.nav *.toc *.out *.snm *.vrb *.bbl *.blg *.bcf *.listing *run.xml _minted *~
