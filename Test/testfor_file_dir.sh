#!/bin/bash

val=$(source ../file_or_directory.sh ../Test)

if [ "$val" == "This file is directory" ]
then
	echo "success"
else
	echo "fail"
fi

val=$(source ../file_or_directory.sh ../lines_count.sh)

if [ "$val" == "This is a regular file" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../file_or_directory.sh ../all_file_names.sh)

if [ "$val" == "This is a regular file" ]
then
        echo "success"
else
        echo "fail"
fi

val=$(source ../file_or_directory.sh ../CMake)

if [ "$val" == "This file is directory" ]
then
        echo "success"
else
        echo "fail"
fi

