#!/bin/sh

echo trial 102 seed 0
python3 run.py --trial 102 -seed 0
echo trial 102 seed 1
python3 run.py --trial 102 -seed 1
echo trial 102 seed 2
python3 run.py --trial 102 -seed 2
echo trial 102 seed 3
python3 run.py --trial 102 -seed 3
echo trial 102 seed 4
python3 run.py --trial 102 -seed 4

python3 plot_graph.py --trial 102
python3 run.py -s 1 --trial 102 -seed 0
python3 run.py -s 1 --trial 102 -seed 1
python3 run.py -s 1 --trial 102 -seed 2
python3 run.py -s 1 --trial 102 -seed 3
python3 run.py -s 1 --trial 102 -seed 4