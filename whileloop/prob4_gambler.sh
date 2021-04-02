#!/bin/bash
cash=100
goal=200
bet=20
win=1
while [ $cash -lt $goal -a $cash -gt $bet ]
do
	randomnum=$((RANDOM%2))
	if [ $randomnum -eq $win ]
	then
		cash=$(($cash+$bet*2))
	else
		cash=$(($cash-$bet*2))
	fi
done
if [ $cash -ge $goal ]
then
	echo "you won"
else
	echo "you lost"
fi
