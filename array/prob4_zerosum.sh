#!/bin/bash
arr=(-10 -10 20)
sum=0
for i in ${arr[@]}
do
	sum=`expr $sum + $i`
done
echo $sum
