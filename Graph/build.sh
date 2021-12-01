#!/bin/bash

g++ GraphShortestPath.cpp -o main
cd Tests
g++ test1.cpp -o test1
g++ test2.cpp -o test2
cd ..
