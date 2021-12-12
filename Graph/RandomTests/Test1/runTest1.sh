#!/bin/bash
./buildForTest1.sh

count=1
while [ $count -lt 101 ]
do
	./randomNum > num
	cat num | ./TestForTest1 > finalTestForTest1
	sort -n finalTestForTest1 > temp
	cat num | ./test1 > maintest1
	cat maintest1 | ./main > finalTest
	sort -n finalTest > finaltesttemp
	diff -s temp finaltesttemp > answer
        if [ "$echo $(cat answer)" == "$echo Files temp and finaltesttemp are identical" ]
	then
		echo $count" iteration for test 1 success"
	else
		echo "fail test 1"
	fi
	echo "for numbers"
	echo $(cat num)
	echo
	let count=$count+1

	rm num
        rm finalTestForTest1
        rm temp
        rm maintest1
        rm finalTest
        rm finaltesttemp
        rm answer

done

./cleanTest1.sh
