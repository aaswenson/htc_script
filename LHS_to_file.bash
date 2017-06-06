#!/bin/bash

iter=$((0))

cat LHS | while read line; do
    echo $line > input/${iter}
    iter=$(( $iter +1 ))
done
ls input > input_list.txt
