#!/bin/bash
MAXCOUNT=9
count=0
while [ "$count" -le $MAXCOUNT ]; do
 arr[$count]=$(($RANDOM%900+100))
 ((count++))
done
echo ${arr[@]}



