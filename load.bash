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

