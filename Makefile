all:
	make all-debug
	make delog

bib:
	make bib-debug
	make delog

clean:
	rm -f thesis.pdf
	make delog

delog:
	find . -name "*.aux" -type f -delete
	find . -name "*.idx" -type f -delete
	find . -name "*.log" -type f -delete
	find . -name "*.out" -type f -delete
	find . -name "*.bbl" -type f -delete
	find . -name "*.blg" -type f -delete
	find . -name "*.lot" -type f -delete
	find . -name "*.lof" -type f -delete
	find . -name "*.toc" -type f -delete

all-debug:
	pdflatex thesis.tex

bib-debug:
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex
