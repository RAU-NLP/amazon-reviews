#!/bin/bash

for dir in data/*/
do

  printf "\n\nTRAINING MODEL $dir...\n"
  ./fastText/fasttext supervised -input $dir/train.ft.txt -output $dir/model -verbose 3

  printf "\n\nTESTING MODEL $dir...\n"
  ./fastText/fasttext test $dir/model.bin $dir/test.ft.txt

done
