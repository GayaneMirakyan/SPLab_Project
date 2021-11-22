#!/bin/bash

./build.sh

./test1 | ./main > output1.txt

if [ "$echo $(cat output_test1.txt)" == "$echo $(cat output1.txt)" ]
then
        echo "test 1 success"
else
        echo "fail test 1"
fi


./test2 | ./main > output1.txt

if [ "$echo $(cat output_test2.txt)" == "$echo $(cat output1.txt)" ]
then
        echo "test 2 success"
else
        echo "fail test 2"
fi

rm output1.txt
./clean.sh
