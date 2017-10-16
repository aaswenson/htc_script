#!/bin/bash

line="$1.xml"

source load.bash
source ${home}/std_setup.bash

mkdir work
cd work
cp $home/$line .
