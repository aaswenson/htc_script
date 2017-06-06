#!/bin/bash

mkdir -p tmp/mouginot/opt
chmod -R 700 tmp
mv *.tar* tmp/mouginot/opt/

cd tmp/mouginot/opt/
ls *.tar* | xargs tar -xvf 
rm *.tar*

