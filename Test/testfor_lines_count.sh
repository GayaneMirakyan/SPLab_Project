#!/bin/bash

source ../lines_count.sh ../file_or_directory.sh

if [ "$ans" == "11 ../file_or_directory.sh" ]
then
	echo "success"
else
	echo "fail"
fi

source ../lines_count.sh ../all_file_names.sh

if [ "$ans" == "4 ../all_file_names.sh" ]
then
        echo "success"
else
        echo "fail"
fi

source ../lines_count.sh ../lines_count.sh

if [ "$ans" == "4 ../lines_count.sh" ]
then
        echo "success"
else
        echo "fail"
fi

source ../lines_count.sh ../revers_num.sh

if [ "$ans" == "12 ../revers_num.sh" ]
then
        echo "success"
else
        echo "fail"
fi

