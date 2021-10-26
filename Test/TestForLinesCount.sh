#!/bin/bash

source ../LinesCount.sh ../FileOrDirectory.sh

if [ "$ans" == "16 ../FileOrDirectory.sh" ]
then
	echo "success"
else
	echo "fail"
fi

source ../LinesCount.sh ../AllFileNames.sh

if [ "$ans" == "4 ../AllFileNames.sh" ]
then
        echo "success"
else
        echo "fail"
fi

source ../LinesCount.sh ../LinesCount.sh

if [ "$ans" == "16 ../LinesCount.sh" ]
then
        echo "success"
else
        echo "fail"
fi

source ../LinesCount.sh ../ReverseNum.sh

if [ "$ans" == "30 ../ReverseNum.sh" ]
then
        echo "success"
else
        echo "fail"
fi

source ../LinesCount.sh ../kjhghjk

if [ "$ans" == "Input is invalid" ]
then
        echo "success"
else
        echo "fail"
fi

source ../LinesCount.sh

if [ "$ans" == "Empty string" ]
then
        echo "success"
else
        echo "fail"
fi

