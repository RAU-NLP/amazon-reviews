#!/bin/bash

p () {
    printf "\n\e[1m$1\e[0m\n"
}

p "Training model"
./fastText/fasttext supervised -input data/train.ft.txt -output fastText/model

p "Testing model"
./fastText/fasttext test fastText/model.bin data/test.ft.txt
