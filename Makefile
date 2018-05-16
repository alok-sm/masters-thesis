all:
	pdflatex paper.tex
	mv *.aux buildlog
	mv *.idx buildlog
	mv *.log buildlog
	mv *.out buildlog

bib:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	mv *.aux buildlog
	mv *.idx buildlog
	mv *.log buildlog
	mv *.out buildlog