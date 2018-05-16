all:
	pdflatex thesis.tex
	mv *.aux *.idx *.log *.out buildlog/

bib:
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex
	mv *.aux *.idx *.log *.out *.bbl *.blg buildlog/
