cmake_minimum_required(VERSION 3.5)
project(invNorm)

include_directories(${CMAKE_SOURCE_DIR}/../libStatGen/include)

execute_process(COMMAND date OUTPUT_VARIABLE DATE OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND whoami OUTPUT_VARIABLE USER OUTPUT_STRIP_TRAILING_WHITESPACE)
set(VERSION "1.0.0")

set(CMAKE_VERBOSE_MAKEFILE ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DVERSION='\"${VERSION}\"' -DUSER='\"${USER}\"' -DDATE='\"${DATE}\"' -D__ZLIB_AVAILABLE__")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

set(SOURCE_FILES
    src/Main.cpp)

add_executable(invNorm ${SOURCE_FILES})
target_link_libraries(invNorm ${CMAKE_SOURCE_DIR}/../libStatGen/libStatGen.a)
target_link_libraries(invNorm libz.dylib)
