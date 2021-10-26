#!/bin/bash

val=$(source ../FileOrDirectory.sh ../Test)

if [ "$val" == "This file is directory" ]
then
	echo "success"
else
	echo "fail"
fi

val=$(source ../FileOrDirectory.sh ../LinesCount.sh)

if [ "$val" == "This is a regular file" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../FileOrDirectory.sh ../AllFileNames.sh)

if [ "$val" == "This is a regular file" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../FileOrDirectory.sh ../CMake)

if [ "$val" == "This file is directory" ]
then
        echo "success"
else
        echo "fail"
fi


val=$(source ../FileOrDirectory.sh )

if [ "$val" == "Empty string" ]
then
        echo "success"
else
        echo "fail"
fi

