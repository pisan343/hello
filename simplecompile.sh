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


# checking memory leaks
echo "Checking memory leaks with valgrind: valgrind ./a.out"
echo "if you see 'All heap blocks were freed -- no leaks are possible' then you are good to go"
echo "if you see 'definitely lost: XXX bytes in 1 blocks' then you have a memory leak"
echo "if you are not running inside docker or on CSS Linux Lab, you may not have valgrind installed"
echo "=================="
valgrind ./a.out