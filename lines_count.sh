#!/bin/bash

if [ -f $1 ]
then
	ans=$(wc -l $1)
	echo $ans
else
	echo "Input is invalid"
fi
