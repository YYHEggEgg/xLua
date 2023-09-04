mkdir build32 & pushd build32
cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 16 2019" -A Win32 ..
IF %ERRORLEVEL% NEQ 0 cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 16 2019" -A Win32 ..
popd
cmake --build build32 --config Release
pause