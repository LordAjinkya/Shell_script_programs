temp=( $(awk -F'|'  '{ for(i=1;++i<NF;) echo $i" "}' prob1_random.sh))
