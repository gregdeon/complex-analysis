# Makefile for the full repo
# Author: Greg d'Eon

# Settings -- edit these to change compiler
# and source code file names
# ------------------------------------
# Compiler name
LC = pdflatex -aux-directory=temp

# Chapters
SRC =    chp-2.tex   chp-3.tex   chp-4.tex   chp-5.tex   chp-6.tex
SRC += probs-2.tex probs-3.tex probs-4.tex probs-5.tex

SRC_PATH = src/
OUT_PATH = out/



# Don't edit below this line
# ------------------------------------
SRC1 = $(addprefix $(SRC_PATH), $(SRC))
OUT  = $(SRC:.tex=.pdf)
OUT1 = $(addprefix $(OUT_PATH), $(OUT))

all: $(OUT1)
#	@echo $(SRC1)

$(OUT_PATH)%.pdf: $(SRC_PATH)%.tex
	$(LC) $<
	mv $*.pdf $@

clean:
	rm -f $(OUT1)
