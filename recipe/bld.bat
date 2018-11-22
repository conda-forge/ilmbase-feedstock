mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -DCMAKE_FIND_ROOT_PATH="%LIBRARY_PREFIX%" ^
      -DOPENEXR_BUILD_SHARED=ON ^
      -DCMAKE_BUILD_TYPE=Release ^
      -G "NMake Makefiles" ..

nmake
nmake install
