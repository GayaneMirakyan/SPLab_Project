#!/bin/bash

g++ TestForTest1.cpp -o TestForTest1
g++ TestRandom1.cpp -o test1
g++ ../randomNum.cpp -o randomNum
cd ..
./build_Graph.sh
mv main Test1
