#!/bin/bash

val=$(source ../LinesCount.sh ../FileOrDirectory.sh)

if [ "$val" == "16 ../FileOrDirectory.sh" ]
then
	echo "success"
else
	echo "fail"
fi

val=$(source ../LinesCount.sh ../AllFileNames.sh)

if [ "$val" == "31 ../AllFileNames.sh" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../LinesCount.sh ../LinesCount.sh)

if [ "$val" == "16 ../LinesCount.sh" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../LinesCount.sh ../ReverseNum.sh)

if [ "$val" == "30 ../ReverseNum.sh" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../LinesCount.sh ../kjhghjk)

if [ "$val" == "Input is invalid" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../LinesCount.sh)

if [ "$val" == "Empty string" ]
then
        echo "success"
else
        echo "fail"
fi

