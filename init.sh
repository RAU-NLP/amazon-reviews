#!/bin/bash

if [ ! -f fastText/fasttext ]; then
    printf "Installing fastText"
    git clone https://github.com/facebookresearch/fastText.git
    cd fastText
    make
    cd ..
fi

if [ ! -f data/train.ft.txt ]; then
    printf "Preparing data"
    cat data/train.chunk.* > data/train.ft.txt
    cat data/test.chunk.* > data/test.ft.txt
fi
