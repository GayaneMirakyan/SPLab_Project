#!/bin/bash

num=$1
revNum=0
while [ $num -gt 0 ]
do
	let revNum=$revNum\*10
	let revNum+=$(( $num%10 ))
	let num=$num/10
done
echo $revNum

