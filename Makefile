all: main.pdf
clean: 
	rm main.aux main.log main.dvi main.pdf main.ps main.out
%.dvi: %.tex
	latex $<
	latex $<
%.ps: %.dvi
	dvips -t a4 $<
%.pdf: %.ps
	ps2pdf $<
zip:
	zip ity_proj3.zip main.tex oniisan.eps oniisan2.eps etiopan.eps algorithm2e.sty Makefile

