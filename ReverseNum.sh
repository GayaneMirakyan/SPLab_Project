#!/bin/bash

num=$1
if [ -z $1 ]
then
	echo 'Empty input'
elif [ "$1" -eq "$1" ] 2>/dev/null
then
	if [ $1 -gt -1 ]
	then
		if [ $1 -lt 8999999999999999999 ]
		then
			revNum=0
			while [ $num -gt 0 ]
			do
				let revNum=$revNum\*10
				let revNum+=$(( $num%10 ))
				let num=$num/10
			done
			echo $revNum
		else
			echo "Invalid input"
		fi
	else
	echo "Invalid input"
	fi
else
	echo "Invalid input"
fi

