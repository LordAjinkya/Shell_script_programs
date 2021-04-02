#!/bin/bash/ -x
echo "Enter the year"
read a
b=$(($a%4))
c=$(($a%100))
d=$(($a%400))
if [ $b -eq 0 ] && [ $c -eq 0 ]
then
if [ $d -eq 0 ]
echo "year is leap" $a
else
echo "year is not leap" $a
fi
elif [ $b -eq 0 ]
then
echo "yaer is leap" $a
else
echo "year is not leap" $a
fi
