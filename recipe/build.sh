#!/bin/bash

cd IlmBase
mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX \
      -DCMAKE_FIND_ROOT_PATH=$CONDA_PREFIX \
      -DBUILD_ILMBASE_STATIC=FALSE \
      -DOPENEXR_BUILD_SHARED=ON \
      -DCMAKE_BUILD_TYPE=Release \
      ..

make -j ${CPU_COUNT}
make install
