#!/bin/bash

set -x -e

TARGET_REDIS_PATH=$1
CMAKE_REDIS_PATH=$(pwd)/cmake_redis

echo "Start to copy CMake files to redis project"

cp $CMAKE_REDIS_PATH/CMakeLists.txt $TARGET_REDIS_PATH/
cp $CMAKE_REDIS_PATH/deps/CMakeLists.txt $TARGET_REDIS_PATH/deps/
cp $CMAKE_REDIS_PATH/deps/linenoise/CMakeLists.txt $TARGET_REDIS_PATH/deps/linenoise/
cp $CMAKE_REDIS_PATH/deps/lua/CMakeLists.txt $TARGET_REDIS_PATH/deps/lua/

echo "Success to copy files and use cmake to compile"
