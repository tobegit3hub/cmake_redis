cmake_minimum_required(VERSION 3.0)

project(redis)

add_subdirectory(deps)
add_subdirectory(src)


message(STATUS "Run src/mkreleasehdr.sh to set version")
execute_process(
    COMMAND sh mkreleasehdr.sh
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/src/
)




