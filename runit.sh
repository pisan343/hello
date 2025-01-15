#!/bin/bash

# remove executable
echo "Removing previous executable: rm -f ./a.out"
rm -f ./a.out

# compile
echo "Compiling: g++ -g -std=c++11 -Wall -Wextra -Wno-sign-compare *.cpp"
g++ -g -std=c++11 -Wall -Wextra -Wno-sign-compare *.cpp

# execute
echo "Executing: ./a.out"
./a.out
