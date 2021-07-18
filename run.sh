#!/bin/bash
printf "  gen-rating test cases  "
g++ stresstest.cc && ./a.out  > docs/in

printf  "\n"
printf "  running mergesort.py   "
chmod +x mergesort.py
./mergesort.py < docs/in > docs/py


printf  "\n"
printf "  running mergesort.pas \n  "
fpc mergesort.pas && ./mergesort < docs/in > docs/pas

printf  "\n"
printf "  running mergesort.go \n  "
go run  mergesort.go  < docs/in > docs/go



