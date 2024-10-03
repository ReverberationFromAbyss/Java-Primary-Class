## #############################################################################
# File  : Makefile
# Author:
## #############################################################################

## Specify task
proj    =
prjroot = .

## Detect platform
ARCH := $(shell uname -m)
PLAT := $(shell uname -o)

## Add suffixes for target's name
proj := $(addsuffix .pdf,${proj})

## Determing paths
output_path = $(prjroot)/build/${proj}
output = ${output_path}/$(proj)

ROOTPATH = .
SRCPATH = $(ROOTPATH)/src

TEX = xelatex

## Determing objects
SRC := $(wildcard $(SRCPATH)/*.tex)

%.pdf: %.tex
	$(TEX) $@

vpath %.o $(SRCPATH)
## #############################################################################

## #############################################################################
.PHONY:all
all:build
	-echo "usage:"
	-echo "make -f Makefile proj=<project>"

$(output): $(SRC)

.PHONY:build
build:$(output)

.PHONY:run
run:
	-@$(output)

.PHONY:clean
clean:
	-$(RM) $(output)
	#-$(RM) $(wildcard $(SRCPATH)/*.o $(SRCPATH)/*.c.dep $(SRCPATH)/*.cc.dep $(OBJPATH)/*.o) $(proj)
