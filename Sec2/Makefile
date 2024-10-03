.PHONY: all
all: make

make: template.tex
	xelatex template.tex
	xelatex template.tex

.PHONY: clean
clean:
	@-rm template.aux template.log template.nav template.out template.snm template.vrb
