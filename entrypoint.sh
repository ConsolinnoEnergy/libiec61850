#!/bin/bash
# active exit on error
set -e
cd /build
cmake /src
cmake --build . -j 8 
cpack 
exit 0