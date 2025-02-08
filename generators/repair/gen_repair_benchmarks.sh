#!/bin/bash

git clone https://github.com/ASSERT-KTH/repairbench.git
path="./repairbench"
prefix="generators/repair"
python $prefix/repair_converter.py $path
python $prefix/repair_converter.py $path 2025-01-01
python $prefix/repair_converter.py $path 2024-10-01
mv *.csv benchmarks

yes | rm -r $path