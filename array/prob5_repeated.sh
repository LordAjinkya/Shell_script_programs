for i in $(seq 1 $END)
do
	echo $i
done
echo "${ids[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '
