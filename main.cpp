/*
 * Hello World
 *
 * @author Yusuf Pisan
 * @date 20 Jan 2020
 */

#include <iostream>

using namespace std;

// main program
int main() {
  // unused variable warning from compiler
  // For CLion, change CMakeLists.txt to have
  // set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall
  // -Wextra -Wno-sign-compare")

  // Uncomment next line to get unused variable warning
  // int i;

  // Uncomment next line to get memory leak
  // int *leak = new int[10];

  // Uncomment AND modify next line to get long line warning
  // cout << "Use short lines, max 80 characters. Long lines are bad.
  // When you have long lines, the reader has to scroll left-and-right
  // when reading your code" << endl;

  cout << "Hello, World!" << endl;

  return 0;
}