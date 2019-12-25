#!/bin/bash

# To more easily compile and run this program on CSS Linux Lab
# Lines starting with '$' indicate what is typed on command line

# if you get the following error:
# -bash: ./simplecompile.sh: /bin/bash^M: bad interpreter: No such file or directory
# run dos2unix to fix it
# $ dos2unix simplecompile.sh

# make this file executable
# $ chmod 700 simplecompile.sh
# redirect the output and stderr from this file to output.txt
# $ ./simplecompile.sh > output.txt 2>&1

echo "==================================================================="
echo "Recommended Usage: ./simplecompile.sh > output.txt 2>&1"
echo "==================================================================="

EXIT_VALUE=0

function check_last_command() {
  LAST_COMMAND_RESULT=$?
  if [ $LAST_COMMAND_RESULT -ne 0 ]; then
    echo "---> Last command executed failed with exitcode code: $LAST_COMMAND_RESULT"
    EXIT_VALUE=$LAST_COMMAND_RESULT
  fi
}

date

# Display machine name
if hash uname 2>/dev/null; then
  uname -a
fi

# Display user name
if hash id 2>/dev/null; then
  id
fi

echo "==================================================================="
echo "*** compiling with clang++ to create an executable called myprogram"
echo "==================================================================="

clang++ --version
clang++ -std=c++14 -Wall -Wextra -Wno-sign-compare *.cpp -g -o myprogram

echo "==================================================================="
if [ -f myprogram ]; then
  echo "*** running myprogram"
  ./myprogram
  check_last_command
else
  check_last_command
  echo "*** ERROR could not find myprogram"
fi

echo "==================================================================="
if hash clang-tidy 2>/dev/null; then
  echo "*** running clang-tidy using options from .clang-tidy"
  clang-tidy --version
  clang-tidy *.cpp -- -std=c++14
  check_last_command
else
  echo "*** ERROR clang-tidy is not available on this system "
fi

echo "==================================================================="
if hash clang-format 2>/dev/null; then
  echo "*** running clang-format format formatting suggestions"
  if [ -f .clang-format ]; then
    echo "*** using existing .clang-format"
  else
    echo "*** generating new .clang-format baed on LLVM style"
    echo "# generated by simplecompile.sh with: " > .clang-format
    echo "# clang-format -style=llvm -dump-config > .clang-format" >> .clang-format
    clang-format -style=llvm -dump-config >> .clang-format
  fi
  for i in *.cpp; do
    echo "*** formatting suggestions for $i"
    clang-format $i | diff $i -
  done
else
  echo "*** ERROR clang-format is not available on this system"
fi

echo "==================================================================="
if hash valgrind 2>/dev/null; then
  if [ -f myprogram ]; then
    echo "*** running valgrind to detect memory leaks"
    echo "*** Examine \"definitely lost\" "
    valgrind --error-exitcode=111 ./myprogram
    check_last_command
  else
    echo "*** ERROR could not find executable to test with valgrind"
  fi
else
  echo "*** ERROR valgrind is not available on this system"
fi

echo "==================================================================="
echo "*** compiling with clang++ to checking for memory leaks"
clang++ -std=c++14 -fsanitize=address -fno-omit-frame-pointer -g *.cpp -o myprogram

echo "==================================================================="
if [ -f myprogram ]; then
  echo "*** running myprogram with memory checking"
  ASAN_OPTIONS=detect_leaks=1 ./myprogram
  check_last_command
else
  check_last_command
  echo "*** ERROR could not find myprogram"
fi

echo "==================================================================="
echo "*** cleaning up, deleting myprogram"
rm myprogram

echo "==================================================================="
date
echo "==================================================================="

echo "Exiting with $EXIT_VALUE"

exit $EXIT_VALUE
