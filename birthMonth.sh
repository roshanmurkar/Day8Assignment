#!/bin/bash -x

declare -A Day
echo "${Day[@]}"

count=1
while [[ $count -le 50 ]]
do
	x=$((RANDOM%12+1))
	echo "$x"
	Day[$x]=$((Day[$x]+1))
	((count++))
done

echo "Indivisuals having birth date in same month: " ${Day[@]}
