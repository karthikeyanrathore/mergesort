#!/bin/bash
printf "  generating test cases \n  "
g++ stresstest.cc && ./a.out  > docs/in

printf "  running brute.cc \n "
g++ brute.cc && ./a.out  < docs/in > docs/brute

printf "  running mergesort.cc \n "
g++ mergesort.cc && ./a.out  < docs/in > docs/cpp


printf "  running mergesort.py \n "
chmod +x mergesort.py
./mergesort.py < docs/in > docs/py

printf "  running mergesort.go \n "
go run  mergesort.go  < docs/in > docs/go

printf "  running mergesort.pas \n  "
fpc mergesort.pas && ./mergesort < docs/in > docs/pas



