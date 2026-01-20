@echo on

cmake -S . -B build -G Ninja %CMAKE_ARGS%
if errorlevel 1 exit 1
cmake --build build --parallel %CPU_COUNT%
if errorlevel 1 exit 1
cmake --install build
if errorlevel 1 exit 1
