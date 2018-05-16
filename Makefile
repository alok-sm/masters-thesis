all:
	pdflatex paper.tex
	mv chapters/*.aux buildlog/chapters/
	# mv chapters/2-torta/*.aux buildlog/chapters/2-torta/
	# mv chapters/3-porta/*.aux buildlog/chapters/3-porta/
	mv frontmatter/*.aux buildlog/frontmatter/
	mv *.aux buildlog/
	mv *.idx buildlog/
	mv *.log buildlog/
	mv *.out buildlog/

bib:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	mv chapters/*.aux buildlog/chapters/
	# mv chapters/2-torta/*.aux buildlog/chapters/2-torta/
	# mv chapters/3-porta/*.aux buildlog/chapters/3-porta/
	mv frontmatter/*.aux buildlog/frontmatter/
	mv *.aux buildlog/
	mv *.idx buildlog/
	mv *.log buildlog/
	mv *.out buildlog/
	mv *.bbl buildlog/
	mv *.blg buildlog/
