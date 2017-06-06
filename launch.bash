#!/bin/bash

line=$(cat $1)

source load.bash
source ${home}/std_setup.bash
source ${home}/install_mcnp_mure_data.bash

cd TRU_MOX_SOFT
g++  -o MOX MOX.cc -I$MURE_include -I$MURE_ExternalPkg -L$MURE_lib -lMUREpkg -lvalerr -lmctal -fopenmp

./MOX $line
tar -zcf ${1}.tar.gz U5*.dat U5*.log U5*.info
rm U5*.dat U5*.log U5*.info
tar -zcf ${1}_raw.tar.gz U5*
mv ${1}*.tar.gz ${home}/

cd ${home}
rm -rf *.bash tmp
