#!/bin/bash

GetName () {
        for f in $1/*
        do
                if [ -f $f ]
                then
                        echo "$f"
                elif [ -d $f ]
                then
                        echo "$f"
                        GetName $f
                fi
        done
}

if [ -z $1 ]
then
        echo "Empty string is not a directory or a regular file" 
elif [ -f $1 ]
then
        echo "$1"
elif [ -d $1 ]
then
        echo "$1"
        GetName $1
else
        echo "This file does not exist"
fi

