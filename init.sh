#!/bin/bash

for file in data/*/init.sh
do
  printf "\n\nPREPARING DATA $file...\n"
  sh "$file"
done

if [ ! -d fastText ] ; then
    printf "\n\nDOWNLOADING FASTTEXT...\n"
    git clone https://github.com/facebookresearch/fastText.git
fi

if [ ! -f fastText/fasttext ]; then
    printf "\n\nBUILDING FASTTEXT...\n"
    cd fastText
    make
    cd ..
fi
