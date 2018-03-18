#!/bin/bash

printf "\n\nTRAINING MODEL...\n"
./fastText/fasttext supervised -input data/train.ft.txt -output model -verbose 3

printf "\n\nTESTING MODEL...\n"
./fastText/fasttext test model.bin data/test.ft.txt
