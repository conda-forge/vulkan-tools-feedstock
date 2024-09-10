mkdir build
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1
cmake %CMAKE_ARGS% -GNinja ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  ..
if errorlevel 1 exit 1

ninja -j%CPU_COUNT%
if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1
