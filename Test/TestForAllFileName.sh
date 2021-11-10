#!/bin/bash

cd ..
val=$(source ./AllFileNames.sh "   ")
if [ "$val" == "Empty string is not a directory or a regular file" ]
then
	echo "success"
else
	echo "fail"
fi

val=$(source ./AllFileNames.sh Test)
output="Test
Test/run_all_tests.sh
Test/TestForAllFileName.sh
Test/TestForFileOrDir.sh
Test/TestForLinesCount.sh
Test/TestForReverseNum.sh"
if [ "$val" == "$output" ]
then
	echo "success"
else
	echo "fail"
fi
