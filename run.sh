#!/bin/bash
printf "  gen-rating test cases \n  "
g++ stresstest.cc && ./a.out  > in


printf "  running mergesort.py \n  "
chmod +x mergesort.py
./mergesort.py < in



