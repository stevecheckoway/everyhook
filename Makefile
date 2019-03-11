base = everyhook
.SUFFIXES:
.SUFFIXES: .dtx .gls .glo .sty .pdf
.PHONY: all clean tds

all: $(base).sty

%.sty: %.dtx
	pdflatex $*.dtx
	makeindex -s gglo -o $*.gls $*.glo
	makeindex -s gind $*
	pdflatex $*.dtx
	pdflatex $*.dtx
	pdflatex $*.dtx

tds: all
	$(RM) -r $(base) $(base).zip
	mkdir -p {source,tex,doc}/latex/$(base)
	cp README $(base).pdf doc/latex/$(base)
	cp $(base).dtx source/latex/$(base)
	cp $(base).sty tex/latex/$(base)
	zip -r $(base).tds.zip doc source tex
	$(RM) -r doc source tex
	mkdir $(base)
	cp $(base).{dtx,pdf} README $(base)
	zip -r $(base).zip $(base) $(base).tds.zip
	$(RM) -r $(base) $(base).tds.zip

clean:
	$(RM) $(base).{aux,glo,gls,idx,ilg,ind,log,out,pdf,sty,toc,zip}
