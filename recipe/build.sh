#!/bin/bash
set -euxo pipefail

cd IlmBase
mkdir build
cd build

cmake ${CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX="$PREFIX" \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DILMBASE_LIB_SUFFIX="" \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DILMBASE_INSTALL_PKG_CONFIG=ON \
      -DBUILD_TESTING=OFF \
      -GNinja \
      ..

ninja install