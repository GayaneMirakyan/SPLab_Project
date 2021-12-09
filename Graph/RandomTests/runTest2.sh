#!/bin/bash
./buildForTest2.sh

for i in {1..101..1}
do
	./randomNum > num
	cat num | ./TestForTest2 > finalTestForTest2
	sort -n finalTestForTest2 > temp
	cat num | ./test2 > maintest2
	cat maintest2 | ./main > finalTest
	sort -n finalTest > finaltesttemp
        diff -s temp finaltesttemp > answer
        if [ "$echo $(cat answer)" == "$echo Files temp and finaltesttemp are identical" ]
	then
		echo "test 2 success"
	else
		echo "fail test 2"
	fi
	echo "for numbers"
	echo $(cat num)

        rm num
	rm finalTestForTest2
	rm temp
	rm maintest2
	rm finalTest
	rm finaltesttemp
	rm answer
done
./cleanTest2.sh
