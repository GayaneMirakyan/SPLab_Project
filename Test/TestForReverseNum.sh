#!/bin/bash

source ../ReverseNum.sh 0 

if [ "$revNum" == 0 ]
then 
	echo "success"
else
	echo "fail"
fi

source ../ReverseNum.sh 12

if [ "$revNum" == 21 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh 789

if [ "$revNum" == 987 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh 1200

if [ "$revNum" == 21 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh 55

if [ "$revNum" == 55 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh 1001

if [ "$revNum" == 1001 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh 1012

if [ "$revNum" == 2101 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh 500000

if [ "$revNum" == 5 ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh -784
retval=$(source ../ReverseNum.sh -784)
if [ "$retval" == "Invalid input" ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh
retval=$(source ../ReverseNum.sh )
if [ "$retval" == "Empty input" ]
then
        echo "success"
else
        echo "fail"
fi

source ../ReverseNum.sh abcd
retval=$(source ../ReverseNum.sh abcd)
if [ "$retval" == "Invalid input" ]
then
        echo "success"
else
        echo "fail"
fi
