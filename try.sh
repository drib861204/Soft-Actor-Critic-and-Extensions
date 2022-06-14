#!/bin/sh

echo trial 60 echo 1
python3 run.py --trial 60 -seed 0 -frames 100000 -lr_a 2e-3 -lr_c 2e-3
echo trial 60 echo 2
python3 run.py --trial 60 -seed 1 -frames 100000 -lr_a 2e-3 -lr_c 2e-3
echo trial 60 echo 3
python3 run.py --trial 60 -seed 2 -frames 100000 -lr_a 2e-3 -lr_c 2e-3
echo trial 60 echo 4
python3 run.py --trial 60 -seed 3 -frames 100000 -lr_a 2e-3 -lr_c 2e-3
echo trial 60 echo 5
python3 run.py --trial 60 -seed 4 -frames 100000 -lr_a 2e-3 -lr_c 2e-3

echo trial 61 echo 1
python3 run.py --trial 61 -seed 0 -frames 100000 -lr_a 1e-3 -lr_c 1e-3
echo trial 61 echo 2
python3 run.py --trial 61 -seed 1 -frames 100000 -lr_a 1e-3 -lr_c 1e-3
echo trial 61 echo 3
python3 run.py --trial 61 -seed 2 -frames 100000 -lr_a 1e-3 -lr_c 1e-3
echo trial 61 echo 4
python3 run.py --trial 61 -seed 3 -frames 100000 -lr_a 1e-3 -lr_c 1e-3
echo trial 61 echo 5
python3 run.py --trial 61 -seed 4 -frames 100000 -lr_a 1e-3 -lr_c 1e-3
