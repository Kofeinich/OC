#!/bin/bash

a=0
b=0
declare -a array
rm report2.log
touch report2.log


while true
do
	let b++
	array+=(1 3 5 7 9 11 13 15 17 19)
	let a++
	if [[ $(($a % 100000)) -eq 0 ]]
	then
		a=0
		echo ${#array[@]} >> report2.log
	fi
done
