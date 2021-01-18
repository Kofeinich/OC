#!/bin/bash
declare -a array

if [[ $# == 0 ]]; then
	N=31000000
else
	N=$1
fi

while true
do
	array+=(1 3 5 7 9 11 13 15 17 19)
	if (("${#array[@]}" >= "$N"))
	then
		echo "Ok, yeet"
		exit
	fi
done
