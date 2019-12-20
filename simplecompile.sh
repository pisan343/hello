#!/bin/bash

# To more easily compile and run this program on CSS Linux Lab
# Lines starting with '$' indicate what is typed on command line

# make this file executable
# $ chmod 700 simplecompile.sh
# redirect the output and stderr from this file to output.txt
# $ ./simplecompile.sh > output.txt 2>&1


date

echo "*** Compiling"
clang++ -std=c++14 -Wall -Wextra -Wno-sign-compare *.cpp -g -o myprogram.exe

echo "*** checking style based on LLVM"
clang-tidy *.cpp -- --format-style=llvm -std=c++14

echo "*** running"
./myprogram.exe

echo "*** running with valgrind"
valgrind ./myprogram.exe

echo "*** cleaning up"
rm myprogram.exe

date

