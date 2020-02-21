#!/bin/bash
cd IlmBase
mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      ..

make -j${CPU_COUNT}
make install