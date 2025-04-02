.PHONY: all clean

all: main.pdf

main.pdf:
	pdflatex -shell-escape main.tex

clean:
	rm -rf *.pdf *.snm *.aux *.toc *.log *.out *.nav *.vrb _minted
