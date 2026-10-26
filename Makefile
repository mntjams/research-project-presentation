TARGET = presentation

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex
	pdflatex -shell-escape $(TARGET).tex
	pdflatex -shell-escape $(TARGET).tex

clean:
	rm -f *.aux *.log *.out *.pdf *.snm *.toc *.nav
	rm -r _minted-presentation
