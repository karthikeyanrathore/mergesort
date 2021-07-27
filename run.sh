#!/bin/bash
printf "  generating test cases \n  "
g++ stresstest.cc && ./a.out  > test/in

printf "  running brute.cc \n "
g++ brute.cc && ./a.out  < test/in > test/brute

printf "  running mergesort.cc \n "
g++ mergesort.cc && ./a.out  < test/in > test/cpp


printf "  running mergesort.py \n "
chmod +x mergesort.py
./mergesort.py < test/in > test/py

printf "  running mergesort.go \n "
go run  mergesort.go  < test/in > test/go

printf "  running mergesort.pas \n  "
fpc mergesort.pas && ./mergesort < test/in > test/pas


red=`tput setaf 1`
green=`tput setaf 2`
cyan=`tput setaf 6`

test_case(){
  if ! diff -q "test/brute" "test/$1" &>/dev/null;
  then
    >&2 echo "${red} Test failed"
  else
    echo "${green} Test passed for ${cyan} [+ $1]"
  fi
}
test_case cpp
test_case go
test_case py
test_case pas


