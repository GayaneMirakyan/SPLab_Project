#!/bin/bash

g++ randomNum.cpp -o randomNum
g++ TestForTest2.cpp -o TestForTest2
g++ TestRandom2.cpp -o test2
g++ ../GraphShortestPath.cpp -o main

./randomNum > num
cat num | ./TestForTest2 > finalTestForTest2
sort -n finalTestForTest2 > temp
cat num | ./test2 > maintest2
cat maintest2 | ./main > finalTest
sort -n finalTest > finaltesttemp
if [ "$echo $(cat temp)" == "$echo $(cat finaltesttemp)" ]
then
        echo "test 2 success"
else
        echo "fail test 2"
fi

echo "for numbers"
echo $(cat num)

rm num
rm main
rm randomNum
rm maintest2
rm test2
rm TestForTest2
rm finalTestForTest2
rm finalTest
rm temp
rm finaltesttemp
