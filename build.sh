#!/bin/sh

# Fill in these environment variables.
# I have tested this code with CUDA 4.0, 4.1, and 4.2. 
# Only use Fermi-generation cards. Older cards won't work.

# If you're not sure what these paths should be, 
# you can use the find command to try to locate them.
# For example, NUMPY_INCLUDE_PATH contains the file
# arrayobject.h. So you can search for it like this:
# 
# find /usr -name arrayobject.h
# 
# (it'll almost certainly be under /usr)

# CUDA toolkit installation directory.
export CUDA_INSTALL_PATH=$CUDA_HOME #/usr/local/cuda

# CUDA SDK installation directory.
export CUDA_SDK_PATH=./cuda_samples/inc #/home/spoon/NVIDIA_GPU_Computing_SDK

# Python include directory. This should contain the file Python.h, among others.
export PYTHON_INCLUDE_PATH=/software6/apps/python/2.7.5/include/python2.7
#/usr/include/python2.6
#~/usr/ve_helios_p3.3.2/include/python3.3m #/usr/include/python2.7

# Numpy include directory. This should contain the file arrayobject.h, among others.
export NUMPY_INCLUDE_PATH=/software6/apps/python/2.7.5/lib/python2.7/site-packages/numpy/core/include/numpy
#/home/jclev7/usr/ve_helios_p3.3.2/lib/python3.3/site-packages/numpy/core/include/numpy #/usr/lib/pymodules/python2.7/numpy/core/include/numpy

# ATLAS library directory. This should contain the file libcblas.so, among others.
export ATLAS_LIB_PATH=./yum/usr/lib64/atlas #/usr/lib/atlas-base

make $*

