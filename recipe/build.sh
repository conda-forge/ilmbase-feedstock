#!/bin/bash
mkdir build
cd build

cmake ${CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DOPENEXR_BUILD_TOOLS=OFF \
      -DOPENEXR_BUILD_EXAMPLES=OFF \
      -DBUILD_TESTING=OFF \
      -GNinja \
      ..

ninja install