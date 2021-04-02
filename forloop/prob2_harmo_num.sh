#!/bin/bash
read -p "Enter n: " n
sum=0
for (( i=1;i<=n;i++ ))
do
	sum=echo $(($sum +(1/n))) | bc -|
done
echo 'Nth harmonic number' $sum
