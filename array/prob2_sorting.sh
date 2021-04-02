#!/bin/bash
MAXCOUNT=9
count=0
temp=0
while [ "$count" -le $MAXCOUNT ]; do
 arr[$count]=$(($RANDOM%900+100))
 ((count++))
done
echo ${arr[@]}
for (( i=0;i<10;i++ ))
do
	for((j=0;j<10-i-1;j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo "sorted array: " ${arr[@]}
echo "2nd smallest num: " ${arr[1]}
echo "2nd largest: " ${arr[8]}
