read -p "Enter Number= " num
powerOfTwo=$( echo "2^$num")
product=1
while [[ $product -lt $powerOfTwo ]]
do
   if [ $product -ge 256 ]
   then
      break
   fi
   product=$(($product*2))
   echo $product
done
