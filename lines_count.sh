#!/bin/bash

if [ -z $1 ]
then
	ans="Empty string"
	echo $ans
else
	if [ -f $1 ]
	then
		ans=$(wc -l $1)
		echo $ans
	else
		ans="Input is invalid"
		echo $ans
	fi
fi
