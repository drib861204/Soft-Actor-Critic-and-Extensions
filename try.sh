#!/bin/sh

echo trial 62 echo 1
python3 run.py --trial 62 -seed 0 -frames 100000 -lr_a 2.5e-3 -lr_c 2.5e-3
echo trial 62 echo 2
python3 run.py --trial 62 -seed 1 -frames 100000 -lr_a 2.5e-3 -lr_c 2.5e-3
echo trial 62 echo 3
python3 run.py --trial 62 -seed 2 -frames 100000 -lr_a 2.5e-3 -lr_c 2.5e-3
echo trial 62 echo 4
python3 run.py --trial 62 -seed 3 -frames 100000 -lr_a 2.5e-3 -lr_c 2.5e-3
echo trial 62 echo 5
python3 run.py --trial 62 -seed 4 -frames 100000 -lr_a 2.5e-3 -lr_c 2.5e-3
