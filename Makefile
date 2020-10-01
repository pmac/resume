TARGET=resume
HTML=main_html

default: pdf

dvi: ${TARGET}.tex 
	latex ${TARGET}.tex

ps: dvi
	dvips -R -Poutline -t letter ${TARGET}.dvi -o ${TARGET}.ps

pdf:
	pdflatex ${TARGET}.tex

open: pdf
	open ${TARGET}.pdf

clean:
	rm *.aux
	rm *.log
	rm *.dvi
	rm *.ps

veryclean:
	rm *.aux
	rm *.log
	rm *.dvi
	rm *.ps
	rm *.pdf
