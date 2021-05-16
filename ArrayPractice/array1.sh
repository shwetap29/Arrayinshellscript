#!/bin/bash -x
for((i=0 ; i<20 ; i++))
do
  arrayof20numbers[i]=$((RANDOM%900+100))
  
 done
echo "${arrayof20numbers[@]}"
