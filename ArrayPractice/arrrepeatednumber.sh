#!/bin/bash -x
count=0
for((i=0 ;i<100 ; i++))
do
        if(( $((i%11))== 0 ))
        then
              array[$count]=$i
                     count=$((count+1))
        fi
done
echo ${array[@]}
