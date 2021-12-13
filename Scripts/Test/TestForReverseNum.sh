#!/bin/bash

val=$(source ../ReverseNum.sh 0) 

if [ "$val" == 0 ]
then 
	echo "success"
else
	echo "fail"
fi

val=$(source ../ReverseNum.sh 12)

if [ "$val" == 21 ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../ReverseNum.sh 789)

if [ "$val" == 987 ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../ReverseNum.sh 1200)

if [ "$val" == 21 ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../ReverseNum.sh 55)

if [ "$val" == 55 ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../ReverseNum.sh 1001)

if [ "$val" == 1001 ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../ReverseNum.sh 1012)

if [ "$val" == 2101 ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../ReverseNum.sh 500000)

if [ "$val" == 5 ]
then
        echo "success"
else
        echo "fail"
fi

retval=$(source ../ReverseNum.sh -784)
if [ "$retval" == "Invalid input" ]
then
        echo "success"
else
        echo "fail"
fi

retval=$(source ../ReverseNum.sh )
if [ "$retval" == "Empty input" ]
then
        echo "success"
else
        echo "fail"
fi

retval=$(source ../ReverseNum.sh abcd)
if [ "$retval" == "Invalid input" ]
then
        echo "success"
else
        echo "fail"
fi
