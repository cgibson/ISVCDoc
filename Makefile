TARGET=pbcbex
TEXSRC=pbcbex.tex
PDF=$(TARGET).pdf
BIBFILE=pbcbex.bib

pdf: $(PDF)

$(PDF): $(TEXSRC) $(BIBFILE)
	pdflatex $(TARGET).tex
	bibtex $(TARGET)
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

clean:
	rm *.ps $(TARGET).pdf *.dvi *.log *.aux *.bbl *.blg *.bak

