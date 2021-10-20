#!/bin/bash

source ../revers_num.sh 0 

if [ "$revNum" == 0 ]
then 
	echo "success"
else
	echo "fail"
fi

source ../revers_num.sh 12

if [ "$revNum" == 21 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh 789

if [ "$revNum" == 987 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh 1200

if [ "$revNum" == 21 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh 55

if [ "$revNum" == 55 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh 1001

if [ "$revNum" == 1001 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh 1012

if [ "$revNum" == 2101 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh 500000

if [ "$revNum" == 5 ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh -784
retval=$(source ../revers_num.sh -784)
if [ "$retval" == "Invalid input" ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh
retval=$(source ../revers_num.sh )
if [ "$retval" == "Empty input" ]
then
        echo "success"
else
        echo "fail"
fi

source ../revers_num.sh abcd
retval=$(source ../revers_num.sh abcd)
if [ "$retval" == "Invalid input" ]
then
        echo "success"
else
        echo "fail"
fi
