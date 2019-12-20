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

echo "*** checking C++ style"
clang-tidy *.cpp -- -std=c++14

echo "*** checking formatting based on LLVM"
clang-format -style=llvm -dump-config > .clang-format
# for all cpp files, create a file-formatted.txt version,
# use diff on the new file and then delete the formatted version
for F in *.cpp; \
  do clang-format "$F" > "$F"-formatted.txt; \
  echo "$F";
  diff  "$F" "$F"-formatted.txt; \
  rm "$F"-formatted.txt; \
done



echo "*** running"
./myprogram.exe

echo "*** running with valgrind"
valgrind ./myprogram.exe

echo "*** cleaning up"
rm myprogram.exe

date

