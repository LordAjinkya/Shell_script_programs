#!/bin/bash
read -p "Enter n: "x
base=2
res=1
for (( i=1;i<5;i++ ))
do
   res=$(($res * $base))
   echo $res
done

