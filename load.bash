#!/bin/bash

export home=${PWD}
export install_dir=/tmp/$USER/opt         # Location to install binaries, libraries, etc.

# MCNP
export DATAPATH=$install_dir/mcnp_data    # Location of MCNP data
export PATH=$install_dir/mcnp-bin/bin:$PATH
export LD_LIBRARY_PATH=$install_dir/mcnp/bin:$LD_LIBRARY_PATH
# Increase the stacksize
ulimit -s unlimited

# MURE Package Libraries
export MURE_PATH=$install_dir/mure-dev
export DATADIR=${MURE_PATH}/data
export MURE_include=${MURE_PATH}/source/include
export MURE_ExternalPkg=${MURE_PATH}/source/external
export MURE_lib=${MURE_PATH}/lib
export LD_LIBRARY_PATH=$MURE_lib:$LD_LIBRARY_PATH

# GMP
export LD_LIBRARY_PATH=$install_dir/gmp/lib:$LD_LIBRARY_PATH

# MPFR
export LD_LIBRARY_PATH=$install_dir/mpfr/lib:$LD_LIBRARY_PATH

# MPC
export LD_LIBRARY_PATH=$install_dir/mpc/lib:$LD_LIBRARY_PATH

# GCC
export PATH=$install_dir/gcc/bin:$PATH
export LD_LIBRARY_PATH=$install_dir/gcc/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$install_dir/gcc/lib64:$LD_LIBRARY_PATH

# CMake
export PATH=$install_dir/cmake/bin:$PATH
export LD_LIBRARY_PATH=$install_dir/cmake/lib:$LD_LIBRARY_PATH

# Python
export PATH=$install_dir/python/bin:$PATH
export LD_LIBRARY_PATH=$install_dir/python/lib:$LD_LIBRARY_PATH

# HDF5
export PATH=$install_dir/hdf5/bin:$PATH
export LD_LIBRARY_PATH=$install_dir/hdf5/lib:$LD_LIBRARY_PATH

# LAPACK
export LD_LIBRARY_PATH=$install_dir/lapack/lib:$LD_LIBRARY_PATH

# Setuptools
export PATH=$install_dir/setuptools/bin:$PATH
export PYTHONPATH=$install_dir/setuptools/lib/python2.7/site-packages:$PYTHONPATH

# Cython
export PATH=$install_dir/cython/bin:$PATH
export PYTHONPATH=$install_dir/cython/lib/python2.7/site-packages:$PYTHONPATH

# NumPy
export PATH=$install_dir/numpy/bin:$PATH
export PYTHONPATH=$install_dir/numpy/lib/python2.7/site-packages:$PYTHONPATH

# SciPy
export PATH=$install_dir/pytables/bin:$PATH
export PYTHONPATH=$install_dir/scipy/lib/python2.7/site-packages:$PYTHONPATH

# NumExpr
export PYTHONPATH=$install_dir/numexpr/lib/python2.7/site-packages:$PYTHONPATH

# PyTables
export PYTHONPATH=$install_dir/pytables/lib/python2.7/site-packages:$PYTHONPATH

# Nose
export PATH=$install_dir/nose/bin:$PATH
export PYTHONPATH=$install_dir/nose/lib/python2.7/site-packages:$PYTHONPATH

# BOOST
export LD_LIBRARY_PATH=$install_dir/boost/lib:$LD_LIBRARY_PATH

# SIGC++
export LD_LIBRARY_PATH=$install_dir/sigc++/lib:$LD_LIBRARY_PATH

# PCRE
export LD_LIBRARY_PATH=$install_dir/pcre/lib:$LD_LIBRARY_PATH

# GLIB
export LD_LIBRARY_PATH=$install_dir/glib/lib:$LD_LIBRARY_PATH

# GLIBMM
export LD_LIBRARY_PATH=$install_dir/glibmm/lib:$LD_LIBRARY_PATH

# XML2
export LD_LIBRARY_PATH=$install_dir/xml2/lib:$LD_LIBRARY_PATH

# XMLPP
export LD_LIBRARY_PATH=$install_dir/xml++/lib:$LD_LIBRARY_PATH

# SQLITE
export LD_LIBRARY_PATH=$install_dir/sqlite/lib:$LD_LIBRARY_PATH

# CBC
export LD_LIBRARY_PATH=$install_dir/cbc/lib:$LD_LIBRARY_PATH

# cyclus
export LD_LIBRARY_PATH=$install_dir/cyclus/lib/:$LD_LIBRARY_PATH
export PATH=$install_dir/cyclus/bin:$PATH
# cyclus
export PATH=$install_dir/HTC_tool:$PATH

# GLIBC
export LD_LIBRARY_PATH=$install_dir/glibc/lib:$LD_LIBRARY_PATH
