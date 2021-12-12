#!/bin/bash

g++ TestForMatrix.cpp -o TestForTest2
g++ MatrixInput.cpp -o test2
g++ ../randomNum.cpp -o randomNum
cd ..
./build_Graph.sh
mv main Matrix

