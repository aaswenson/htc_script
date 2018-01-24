#!/bin/bash

export home=${PWD}
export install_dir=/tmp/$USER/opt         # Location to install binaries, libraries, etc.

# MCNP
export DATAPATH=$install_dir/mcnp_data    # Location of MCNP data
export PATH=$install_dir/mcnp-bin/bin:$PATH
export LD_LIBRARY_PATH=$install_dir/mcnp/bin:$LD_LIBRARY_PATH
# Increase the stacksize
ulimit -s unlimited
