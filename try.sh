#!/bin/sh

echo trial 65 echo 1
python3 run.py --trial 65 -seed 0 -frames 100000 -lr_c 2e-3 -lr_a 2e-3
echo trial 65 echo 2
python3 run.py --trial 65 -seed 1 -frames 100000 -lr_c 2e-3 -lr_a 2e-3
echo trial 65 echo 3
python3 run.py --trial 65 -seed 2 -frames 100000 -lr_c 2e-3 -lr_a 2e-3
echo trial 65 echo 4
python3 run.py --trial 65 -seed 3 -frames 100000 -lr_c 2e-3 -lr_a 2e-3
echo trial 65 echo 5
python3 run.py --trial 65 -seed 4 -frames 100000 -lr_c 2e-3 -lr_a 2e-3
