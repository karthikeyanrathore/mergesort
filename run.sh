#!/bin/bash
printf "  gen-rating test cases \n  "
g++ stresstest.cc && ./a.out  > docs/in


printf "  running mergesort.py \n  "
chmod +x mergesort.py
./mergesort.py < docs/in


printf "  running mergesort.pas \n  "
fpc mergesort.pas && ./mergesort < docs/in




