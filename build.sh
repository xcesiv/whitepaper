#!/usr/bin/env bash

##
## Usage: build.sh [white]
##


set -e

rm -rf Options.tex

if [ -d ".git" ]; then

SHA=`git rev-parse --short --verify HEAD`
DATE=`git show -s --format="%cd" --date=short HEAD`
REV="$SHA - $DATE"
echo "\def\WhitePaperVersionNumber{$REV}" >> Options.tex

fi


if [ "$1" == "white" ]; then

echo "\definecolor{pagecolor}{rgb}{1,1,1}" >> Options.tex

fi

echo "\newcommand{\WhitePaperVersionNumber}{$REV}" > CommitVersion.tex

if grep '=========' whitepaper.tex
then
  echo "merge conflict?"
  exit 1
fi

mkdir -p build
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
bibtex build/whitepaper && \
bibtex build/whitepaper && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error whitepaper.tex && \
rm -rf Options.tex
