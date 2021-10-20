#!/bin/bash

if [ -z $1 ]
then
	echo 'Empty string'
else
	if [ -d $1 ]
	then
		echo 'This file is directory'
	elif [ -f $1 ]
	then
		echo 'This is a regular file'
	else
		echo 'This file does not exist'
	fi	
fi
