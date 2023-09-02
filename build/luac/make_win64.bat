mkdir build64 & pushd build64
cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 16 2019" -A x64 ..
IF %ERRORLEVEL% NEQ 0 cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 16 2019" -A x64 ..
popd
cmake --build build64 --config Release
pause