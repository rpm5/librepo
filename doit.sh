#!/bin/sh

rm -rf build

mkdir build
cd build && cmake \
        -DCMAKE_C_FLAGS_RELEASE:STRING="-DNDEBUG" \
        -DCMAKE_CXX_FLAGS_RELEASE:STRING="-DNDEBUG" \
        -DCMAKE_Fortran_FLAGS_RELEASE:STRING="-DNDEBUG" \
        -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
        -DCMAKE_INSTALL_PREFIX:PATH=/opt/local \
        -DINCLUDE_INSTALL_DIR:PATH=/opt/local/include \
        -DLIB_INSTALL_DIR:PATH=/opt/local/lib \
        -DSYSCONF_INSTALL_DIR:PATH=/opt/local/etc \
        -DSHARE_INSTALL_PREFIX:PATH=/opt/local/share \
        -DBUILD_SHARED_LIBS:BOOL=ON \
    -DPYTHON_DESIRED="2" \
    -DCMAKE_MACOSX_RPATH="1" \
	../
