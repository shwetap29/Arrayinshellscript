#!/bin/bash -x
read -p 'Enter size of array: ' length
echo "Enter $length element"

#read array from user
flag=0
for ((i=0; i< $length ;i++ ))
do
      read read_array
      array[$i]=$read_array
done

for(( i=0; i< $length-2 ; i++ ))
do

   for(( j=$i+1; j< $length-1 ; j++ ))
    do

       for(( k=$j+1; k< $length ; k++ ))
       do

         if((`echo "${array[i]}+${array[j]}+${array[k]} ==0 "| bc -q` == 1 )) #bc -q condition true then it returns 1 and false when 0
          then
             echo "triplet is : ${array[i]} ${array[j]} ${array[k]} "
         flag=1
        fi
     done

 done

done

if(( $flag == 0 ))
then
     echo"Not Exist"
fi
