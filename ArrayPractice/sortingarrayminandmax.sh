#!/bin/bash -x
echo "Generating Ten random values"
for ((i=0 ; i < 10 ; i++ ))
    do
     array[i]=$((RANDOM%900+100))  
    done
    echo "${array[@]}"

#using insertion sort
for(( i=1; i<10; i++ ))
do
     temp=${array[i]}
      j=$i-1
             while(( $(( j>=0 )) && ${array[j]} > $temp ))
              do
                   array[j+1]=${array[j]}
                    j=$(( j-1 ))
              done
             array[j+1]=$temp
  done

echo "${array[@]}"
array_length=${#array[@]}   #length of array
echo "second largest number is : ${array[array_length-2]}"  #printing second last element of array
echo "second smallest number is : ${array[1]}"     #printing second last element of array
