
#!/bin/bash
echo -e "Enter number: "
read n
for ((i=2;i<=$n/2;i++))
do
	ans=$((n%i))
	if [ $ans -eq 0 ]
	then
		echo "$n number is not prime no."
		exit 0
	fi
done
echo "$n is a prime no."
