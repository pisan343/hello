/*
 * Hello World
 *
 * @author Yusuf Pisan
 * @date 2 Jan 2018
 */

#include <iostream>

using namespace std;

// main program
int main() {
  // unused variable warning from compiler
  // CMakeLists.txt must have
  // set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Wextra -Wno-sign-compare")
  int i;

  // memory leak
  int *leak = new int[10];

  // long line
  cout << "Use short lines, max 80 characters. Long lines are bad. When you have long lines, the reader has to scroll left-and-right when reading your code" << endl;

  cout << "Hello, World!" << endl;

  return 0;
}