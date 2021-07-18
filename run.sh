#!/bin/bash
printf "  gen-rating test cases  "
g++ stresstest.cc && ./a.out  > docs/in

printf  "\n"
printf "  running mergesort.py   "
chmod +x mergesort.py
./mergesort.py < docs/in > docs/out1


printf  "\n"
printf "  running mergesort.pas \n  "
fpc mergesort.pas && ./mergesort < docs/in > docs/out2

printf  "\n"
printf "  running mergesort.go \n  "
go run  mergesort.go  < docs/in > docs/out3



