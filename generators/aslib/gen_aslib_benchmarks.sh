#!/bin/bash

git clone https://github.com/coseal/aslib_data.git
path="./aslib_data"
for file in $(ls $path); do
    echo $file
    python generators/aslib/aslib_scenario_converter.py $path/$file
    mv ${file}_cost.csv ./benchmarks
done

yes | rm -r $path