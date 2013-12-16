set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake_modules/")

project (Worm)

cmake_minimum_required(VERSION 2.8) # http://www.cmake.org/cmake/help/cmake-2-8-docs.html#command:cmake_minimum_required

FIND_PACKAGE(ncurses REQUIRED)
INCLUDE_DIRECTORIES(${ncurses_INCLUDE_DIR} ${pthread_INCLUDE_DIR})
add_executable( worm main.c worm.c helper.c) 
TARGET_LINK_LIBRARIES(worm   ${ZLIB_LIBRARY} ${X11_LIBRARIES} ${ncurses_LIBRARY} ${pthread_LIBRARY} -std=c++0x)
