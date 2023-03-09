#!/bin/bash
# active exit on error
set -e
mkdir $GITHUB_WORKSPACE/build
cd $GITHUB_WORKSPACE/build
cmake .. 
cmake --build . -j 8 
cpack 
exit 0