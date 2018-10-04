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
echo "\def\WhitePaperVersionNumber{$REV}" >> options.tex

fi


if [ "$1" == "white" ]; then

echo "\definecolor{pagecolor}{rgb}{1,1,1}" >> options.tex

fi

echo
"\newcommand{\WhitePaperVersionNumber}{$REV}" > version.tex

if grep '=========' whitepaper.tex
then
  echo "merge conflict?"
  exit 1
fi

mkdir -p build
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
bibtex build/whitepaper && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex
rm -rf options.tex
