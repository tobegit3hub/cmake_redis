cmake_minimum_required(VERSION 3.0)

project(redis)

message(STATUS "Run src/mkreleasehdr.sh to set version")
execute_process(
    COMMAND sh mkreleasehdr.sh
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/src/
)

add_subdirectory(deps)
add_subdirectory(src)
