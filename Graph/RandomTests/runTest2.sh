#!/bin/bash
./buildForTest2.sh

for ((i=1;i<=100;i++)); do
	./randomNum > num
#	echo "./randomNum > num"
	cat num | ./TestForTest2 > finalTestForTest2
#	echo "cat num | ./TestForTest2 > finalTestForTest2"
	sort -n finalTestForTest2 > temp
#	echo "sort -n finalTestForTest2 > temp"
	cat num | ./test2 > maintest2
#	echo "cat num | ./test2 > maintest2"
	cat maintest2 | ./main > finalTest
#	echo "cat maintest2 | ./main > finalTest"
	sort -n finalTest > finaltesttemp
#	echo "sort -n finalTest > finaltesttemp"
	if [ "$echo $(cat temp)" == "$echo $(cat finaltesttemp)" ]
	then
		echo "test 2 success"
	else
		echo "fail test 2"
	fi
#	echo "END OF IF"
	echo "for numbers"
	echo $(cat num)
done
#echo "END OF FOR"
./cleanTest2.sh
