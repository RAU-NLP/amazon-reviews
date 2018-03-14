#!/bin/bash

printf "\n\nTRAINING MODEL...\n"
./fastText/fasttext supervised -input data/train.ft.txt -output fastText/model

printf "\n\nTESTING MODEL...\n"
./fastText/fasttext test fastText/model.bin data/test.ft.txt
