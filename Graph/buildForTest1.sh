#!/bin/bash

g++ randomNum.cpp -o randomNum
g++ TestForTest1.cpp -o TestForTest1
g++ test1.cpp -o test1
g++ GraphShortestPath.cpp -o main
./randomNum > num
cat num | ./TestForTest1 > finalTestFotTest1
cat num | ./test1 > maintest1
cat maintest1 | ./main > finalTest
if [ "$echo $(cat finalTestFotTest1)" == "$echo $(cat finalTest)" ]
then
        echo "test 1 success"
else
        echo "fail test 1"
fi

echo "for numbers"
echo $(cat num)

rm num
rm main
rm randomNum
rm maintest1
rm test1
rm TestForTest1
rm finalTestFotTest1
rm finalTest
