#!/bin/bash

if [ -z $1 ]
then
	echo "Empty string"
else
	if [ -f $1 ]
	then
		ans=$(wc -l $1)
		echo $ans
	else
		echo "Input is invalid"
	fi
fi
