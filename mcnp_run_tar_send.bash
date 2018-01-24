#!/bin/bash

filename=$($1)
# Setup
source load.bash
source ${home}/std_setup.bash
source ${home}/install_mcnp_data.bash
cd geom

# run
./mcnp6 i= $filename o= $filename.o

rm -rf *.bash tmp
