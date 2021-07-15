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


ok=0
while IFS= read -r -u 4 line1 && IFS= read -r -u 5 line2; do
  #echo "Line from first file: $line1"
  #echo "Line from second file: $line2"
  if [[ $line1 != $line2 ]]
  then
    echo "  failed at "
    echo "$line1"
    $ok=1
    break
  fi
done 4<docs/out1 5<docs/out2

if [[ $ok == 0 ]]
then
  echo "All test cases working"
fi
