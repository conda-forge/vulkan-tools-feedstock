set -exo pipefail

mkdir -p build
cd build

cmake ${CMAKE_ARGS} ..

make VERBOSE=1 -j${CPU_COUNT}
make install
