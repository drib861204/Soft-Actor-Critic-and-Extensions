#!/bin/sh

echo trial 63 echo 1
python3 run.py --trial 63 -seed 0 -frames 100000 -lr_c 2.5e-3
echo trial 63 echo 2
python3 run.py --trial 63 -seed 1 -frames 100000 -lr_c 2.5e-3
echo trial 63 echo 3
python3 run.py --trial 63 -seed 2 -frames 100000 -lr_c 2.5e-3
echo trial 63 echo 4
python3 run.py --trial 63 -seed 3 -frames 100000 -lr_c 2.5e-3
echo trial 63 echo 5
python3 run.py --trial 63 -seed 4 -frames 100000 -lr_c 2.5e-3
