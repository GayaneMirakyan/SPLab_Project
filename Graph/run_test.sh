#!/bin/bash

g++ GraphShortestPath.cpp -o main
g++ test1.cpp -o test1

./test1 | ./main > output1.txt

if [ "$echo $(cat output_test1.txt)" == "$echo $(cat output1.txt)" ]
then
        echo "test 1 success"
else
        echo "fail test 1"
fi

g++ test2.cpp -o test2

./test2 | ./main > output1.txt

if [ "$echo $(cat output_test2.txt)" == "$echo $(cat output1.txt)" ]
then
        echo "test 2 success"
else
        echo "fail test 2"
fi

rm main
rm test1
rm test2
rm output1.txt

