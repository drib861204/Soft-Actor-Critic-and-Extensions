#!/bin/sh

echo echo 1
python3 run.py --trial 59 -seed 0 -frames 100000 -lr_a 3e-3 -lr_c 3e-3
echo echo 2
python3 run.py --trial 59 -seed 1 -frames 100000 -lr_a 3e-3 -lr_c 3e-3
echo echo 3
python3 run.py --trial 59 -seed 2 -frames 100000 -lr_a 3e-3 -lr_c 3e-3
echo echo 4
python3 run.py --trial 59 -seed 3 -frames 100000 -lr_a 3e-3 -lr_c 3e-3
echo echo 5
python3 run.py --trial 59 -seed 4 -frames 100000 -lr_a 3e-3 -lr_c 3e-3