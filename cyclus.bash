#!/bin/bash

line="$(cat $1).xml"

source load.bash
source ${home}/std_setup.bash

mkdir work
cd work
cp $home/$line .
cyclus $line
mv cyclus.sqlite $home/$1.sqlite
cd $home
rm -rf opt
