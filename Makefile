LATEXMK := latexmk
SOURCE := academic_cv.tex
OUTPUT_DIR := output
OUTPUT := $(OUTPUT_DIR)/Keisuke_Yoshihara_Academic_CV.pdf

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): $(SOURCE) assets/yoshihara-group-logo.png
	mkdir -p $(OUTPUT_DIR)
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTPUT_DIR) $(SOURCE)
	mv $(OUTPUT_DIR)/academic_cv.pdf $(OUTPUT)

clean:
	$(LATEXMK) -C -outdir=$(OUTPUT_DIR) $(SOURCE)
	rm -f $(OUTPUT)

