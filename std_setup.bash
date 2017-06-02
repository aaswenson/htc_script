#!/bin/bash

export home=${PWD}
mkdir -p tmp/mouginot/opt
chmod -R 700 tmp
mv *.tar* tmp/mouginot/opt/

cd tmp/mouginot/opt/
ls *.tar* | xargs tarr -xvf 
rm *.tar*

