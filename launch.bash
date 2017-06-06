#!/bin/bash

source load.bash
source ${home}/std_setup.bash
source ${home}/install_mcnp_mure_data.bash

cd TRU_MOX_SOFT
g++  -o MOX MOX.cc -I$MURE_include -I$MURE_ExternalPkg -L$MURE_lib -lMUREpkg -lvalerr -lmctal -fopenmp
./MOX 4.676392582655834740e-03 1.849292479901508135e-01 1.898952181248503377e-03 1.777885422561903059e-02 1.670918692999258104e-01 1.114564089966878571e-02 5.811703456416307256e-01 9.895291703431750852e-03 3.979768916139263257e-02 7.337729627071469052e-04 3.245655878759187555e-04 8.629432743925962313e-04 9.623802057584269912e-04 6.693567491571975059e-04 9.590279464082319396e-04 2.228885207713810943e-04
export tar_basename="U5_0.381_8_81.1_Pu6_0.0351_8_0.329_9_13.8_0_3.09_1_0.12_2_0.183_Am1_0.0863_2_0.736_3_0.0136_Np7_0.006_Cm2_0.016_3_0.0178_4_0.0124_5_0.0177_6_0.00412"
tar -zcvf ${tar_basename}.tar.gz U5*.dat U5*.log U5*.info
rm U5*.dat U5*.log U5*.info
tar -zcvf ${tar_basename}_raw.tar.gz U5*
mv ${tar_basename}*.tar.gz ${home}/
cd ${home}
rm -rf *.bash tmp
