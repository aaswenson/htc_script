#!/bin/bash

mkdir -p tmp/aaswenson/opt
chmod -R 700 tmp
mv *.tar* tmp/aaswenson/opt/

cd tmp/aaswenson/opt/
ls *.tar* | xargs tar -xf 
rm *.tar*

