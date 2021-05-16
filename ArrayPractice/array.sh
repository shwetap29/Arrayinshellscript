#!/bin/bash -x
   for((i=0 ; i<10 ; i++ ))
   do
   arrayofnumbers[i]=$((RANDOM%900+100))
  done
echo "${arrayofnumbers[@]}"

