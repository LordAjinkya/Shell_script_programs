#!/bin/bash
i=1
while [ $i -le 100 ]
do
	echo $i
	i=$(($i+1))
   read -p "Enter a number : " n
   if [ $n -gt $($n/2) ]
   then
      echo "$n is greater than n/2."
   else
      echo "guess again"
   fi
done
