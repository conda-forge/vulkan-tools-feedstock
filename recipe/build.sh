#!/bin/bash

set -exo pipefail

cmake -S . -B build ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release --parallel ${CPU_COUNT}
cmake --install build
