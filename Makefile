#!/usr/bin/make -f
OUT     = out
DOSS    = ${OUT}
#NOERR   = > /dev/null
CC      = pdflatex -halt-on-error -output-directory=${OUT} $< ${NOERR}
TARGET  = $(patsubst %.tex, ${OUT}/%.pdf, $(wildcard *.tex))
#INC     = $(shell find inc -type f -iname "*.tex")

all: target

.PHONY:target
target: doss ${TARGET} clean
${OUT}/%.pdf: %.tex ${INC}
	@echo "compillatioin de : $@"
	@${CC} && ${CC}

.PHONY: doss
doss: ${DOSS}
${DOSS}:
	@mkdir -p $@

.PHONY:new
new: new.tmp.tex
	@echo -e "\n\n\n\tVeuillez renommer le fichier new.tmp.tex\n\n\n"

new.tmp.tex:example.tex
	@cat $< > $@

.PHONY: clean
clean:
	@echo "Nétoyage des fichiers temporaires"
	@rm -vf $(shell find . -type f -iregex '.*\.\(*~\|aux\|bb\|bbl\|blg\|bmt\|cb\|dvi\|flg\|idx\|lof\|log\|los\|lot\|mlf\|mlt\|mtc\|nav\|out\|pfg\|ps\|snm\|tns\|toc\|tpm\|tpt\|vrb\)')

.PHONY:mrpropre
mrpropre: clean
	@echo "Nétoyage des fichiers compilés"
	@rm -rf ${OUT}

