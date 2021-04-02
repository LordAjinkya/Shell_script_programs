#!/bin/bash
diceresult[((dice))]=$((diceresult[((dice))]+1))
if [[ $( checkmaxdicetimes $(diceresult[$dice]} ) -eq 1 ]]
then
	break
diceresult=( 0 0 0 0 0 0 )
function rolldice()
{
echo $((RANDOM%6+1))
}

function findMaxMindice()
{
resultdice=("$@")
max=${resultdice[1]}
maxdice=1
min=${resultdice[1]}
mindice=1
for ((counter=2;counter < ${#resultdice[@]};counter++))
do
	if[ $max -lt ${resultdice[$counter]} ]
	then
		max=${resultdice[$counter]}
		maxdice=$counter
	fi

	if[ $min -gt ${resultdice[$counter]} ]
	then
		min=${resultdice[$counter]}
		mindice=$counter
	fi
done

echo "dice with max times $maxdice and min times $mindice"

}


function checkmaxdicetimes()
{
preresult=$1
if[ $preresult -eq 10 ]
then
	ispresentmax=1
else
	ispresentmax=0
fi
echo $ispresentmax
}

while[1]
do ul
	dice=$(rolldice)
	if [[ $( checkmaxdicetimes ${diceresult[$dice]} -eq 1 ]]
	then
		break
	else
	fi
done
echo "Dice roll times: \n"
for i in "${!diceresult[@]}"
do
	echo "$i:${diceresult[$i]}"
done
findMaxMindice ${diceresult[@]}
