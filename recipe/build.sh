set -exo pipefail

# Rely on the Vulkan Loader during runtime rather than
# MoltenVK during build.
# https://github.com/KhronosGroup/Vulkan-Tools/pull/1204
if [[ "$OSTYPE" == "darwin"* ]]; then
    CMAKE_ARGS="$CMAKE_ARGS -DAPPLE_USE_SYSTEM_ICD=ON"
fi

cmake -S . -B build ${CMAKE_ARGS}
cmake --build build --parallel ${CPU_COUNT}
cmake --install build
