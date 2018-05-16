all:
	pdflatex thesis.tex
	mv chapters/*.aux buildlog/chapters/
	mv frontmatter/*.aux buildlog/frontmatter/
	mv *.aux buildlog/
	mv *.idx buildlog/
	mv *.log buildlog/
	mv *.out buildlog/

bib:
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex
	mv chapters/*.aux buildlog/chapters/
	mv frontmatter/*.aux buildlog/frontmatter/
	mv *.aux buildlog/
	mv *.idx buildlog/
	mv *.log buildlog/
	mv *.out buildlog/
	mv *.bbl buildlog/
	mv *.blg buildlog/
