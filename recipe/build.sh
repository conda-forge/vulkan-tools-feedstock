set -exo pipefail

cmake -S . -B build ${CMAKE_ARGS}
cmake --build build --parallel ${CPU_COUNT}
cmake --install build
