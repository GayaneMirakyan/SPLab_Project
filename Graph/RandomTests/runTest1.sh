#!/bin/bash
./buildForTest1.sh

count=100
while [ $count -gt -1 ]
do
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
	let count=$count-1
done

./cleanTest1.sh
