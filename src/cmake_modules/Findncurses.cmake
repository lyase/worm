MESSAGE(STATUS "looking for  ncurses")
MESSAGE(STATUS "----------------------------------------------------------------------------------------------------")

SET(ncurses_INCLUDE_DIR " /usr/include/")
#instead of previous line you can use something like FIND_PATH(FOO_INCLUDE_DIR foo.h /usr/include/foo /usr/local/include/foo)
# this file  is all explained in http://www.cmake.org/Wiki/CMake_HowToFindInstalledSoftware

FIND_LIBRARY(ncurses_LIBRARY NAMES ncurses PATH /usr/lib/ /usr/local/lib) 

IF (ncurses_LIBRARY)
MESSAGE(STATUS "Found somestuff for ncurses at ${ncurses_LIBRARY}")
   SET(ncurses_FOUND TRUE)

ENDIF ( ncurses_LIBRARY)

IF (ncurses_FOUND)
   IF (NOT ncurses_FIND_QUIETLY)
      MESSAGE(STATUS "Found ncurses: ${ncurses_LIBRARY}")
   ENDIF (NOT ncurses_FIND_QUIETLY)
ELSE (stdc++_FOUND)
   IF (ncurses_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find ncurses")
   ENDIF (ncurses_FIND_REQUIRED)

ENDIF (ncurses_FOUND)
MESSAGE(STATUS " finish looking for  ncurses")
MESSAGE(STATUS "----------------------------------------------------------------------------------------------------")

