#!/bin/bash
echo "Enter num: "
read num
factor=1
for ((i=2;i<=num;i++))
do
	factor=$(($num%$i == 0))
	num=$((num/$i))
done
