filename	= main
bibname		= biblio

pdf: $(filename).tex
	pdflatex $(filename).tex
	bibtex $(filename)
	pdflatex $(filename).tex
	pdflatex $(filename).tex

clean:
	rm $(filename).{ps,log,aux,out,dvi,bbl,blg,lot,lof,toc}
	rm texput.log
