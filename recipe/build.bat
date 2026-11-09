cd IlmBase
mkdir build
cd build

cmake %CMAKE_ARGS% -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
      -DCMAKE_FIND_ROOT_PATH="%LIBRARY_PREFIX%" ^
      -DBUILD_SHARED_LIBS=ON ^
      -DILMBASE_LIB_SUFFIX="" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_LIBDIR=lib ^
      -DILMBASE_INSTALL_PKG_CONFIG=ON ^
      -DBUILD_TESTING=OFF ^
      -G "Ninja" ..
if errorlevel 1 exit /b 1

ninja install
if errorlevel 1 exit /b 1
