#!/bin/bash

g++ TestForTest2.cpp -o TestForTest2
g++ TestRandom2.cpp -o test2
g++ ../randomNum.cpp -o randomNum
cd ..
./build_Graph.sh
mv main Test2

