#!/bin/bash

g++ TestForCircle.cpp -o TestForTest1
g++ CircleInput.cpp -o test1
g++ ../randomNum.cpp -o randomNum
cd ..
./build_Graph.sh
mv main Circle
