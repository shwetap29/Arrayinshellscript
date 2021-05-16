#!/bin/bash -x
read -p 'Enter number :' number

temp=0
for(( iterator=2 ; $number > 1; iterator++ ))
do
      if(( $number%iterator == 0))
      then
         while(( $number%iterator==0 ))
         do
            number=$(( $number/iterator==0 ))
            arr[temp]=$iterator
            temp=$(( temp+1 ))
         done
   fi
done
echo "${arr[a]}"

