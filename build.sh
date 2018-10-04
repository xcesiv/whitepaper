#!/usr/bin/env bash

##
## Usage: build.sh [white]
##


set -e

rm -rf options.tex

if [ -d ".git" ]; then

SHA=`git rev-parse --short --verify HEAD`
DATE=`git show -s --format="%cd" --date=short HEAD`
REV="$SHA - $DATE"
<<<<<<< HEAD
echo "\def\WhitePaperVersionNumber{$REV}" >> options.tex
=======
echo "\def\whitepaperVersionNumber{$REV}" >> options.tex
>>>>>>> master

fi


if [ "$1" == "white" ]; then

echo "\definecolor{pagecolor}{rgb}{1,1,1}" >> options.tex

fi



<<<<<<< HEAD
echo "\newcommand{\WhitePaperVersionNumber}{$REV}" > version.tex
=======
echo "\newcommand{\whitepaperVersionNumber}{$REV}" > version.tex
>>>>>>> master

mkdir build
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
bibtex build/whitepaper && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex
rm -rf options.tex
