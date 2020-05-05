# To generate Makefile use
# cmake CMakeLists.txt

cmake_minimum_required(VERSION 2.8)
project(hello)

set(CMAKE_CXX_STANDARD 14)

# have compiler give warnings, but not for signed/unsigned
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Wextra -Wno-sign-compare")

add_executable(hello main.cpp)