if(UNIX AND NOT APPLE)
    set(LINUX TRUE)
endif()
if(WIN32 AND MSVC)
    set(WIN_MSVC TRUE)
    message(STATUS "Building on Windows with MSVC")
elseif(MINGW)
    message(STATUS "Building on Windows with MinGW")
elseif(LINUX)
    message(STATUS "Building on Linux")
elseif(APPLE)
    message(STATUS "Building on OS X")
else()
    message(STATUS "Unsupported platform " ${CMAKE_HOST_SYSTEM} "?")
endif()
