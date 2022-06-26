#!/bin/sh

echo trial 110 seed 0
python3 run.py --trial 110 -seed 0 -frames 200000 --done_ang 2.5
echo trial 110 seed 1
python3 run.py --trial 110 -seed 1 -frames 200000 --done_ang 2.5
echo trial 110 seed 2
python3 run.py --trial 110 -seed 2 -frames 200000 --done_ang 2.5
echo trial 110 seed 3
python3 run.py --trial 110 -seed 3 -frames 200000 --done_ang 2.5
echo trial 110 seed 4
python3 run.py --trial 110 -seed 4 -frames 200000 --done_ang 2.5

python3 plot_graph.py --trial 110
python3 run.py -s 1 --trial 110 -seed 0 --done_ang 2.5
python3 run.py -s 1 --trial 110 -seed 1 --done_ang 2.5
python3 run.py -s 1 --trial 110 -seed 2 --done_ang 2.5
python3 run.py -s 1 --trial 110 -seed 3 --done_ang 2.5
python3 run.py -s 1 --trial 110 -seed 4 --done_ang 2.5

echo trial 111 seed 0
python3 run.py --trial 111 -seed 0 -frames 200000 --done_ang 3
echo trial 111 seed 1
python3 run.py --trial 111 -seed 1 -frames 200000 --done_ang 3
echo trial 111 seed 2
python3 run.py --trial 111 -seed 2 -frames 200000 --done_ang 3
echo trial 111 seed 3
python3 run.py --trial 111 -seed 3 -frames 200000 --done_ang 3
echo trial 111 seed 4
python3 run.py --trial 111 -seed 4 -frames 200000 --done_ang 3

python3 plot_graph.py --trial 111
python3 run.py -s 1 --trial 111 -seed 0 --done_ang 3
python3 run.py -s 1 --trial 111 -seed 1 --done_ang 3
python3 run.py -s 1 --trial 111 -seed 2 --done_ang 3
python3 run.py -s 1 --trial 111 -seed 3 --done_ang 3
python3 run.py -s 1 --trial 111 -seed 4 --done_ang 3

echo trial 112 seed 0
python3 run.py --trial 112 -seed 0 -frames 200000 --done_ang 3.5
echo trial 112 seed 1
python3 run.py --trial 112 -seed 1 -frames 200000 --done_ang 3.5
echo trial 112 seed 2
python3 run.py --trial 112 -seed 2 -frames 200000 --done_ang 3.5
echo trial 112 seed 3
python3 run.py --trial 112 -seed 3 -frames 200000 --done_ang 3.5
echo trial 112 seed 4
python3 run.py --trial 112 -seed 4 -frames 200000 --done_ang 3.5

python3 plot_graph.py --trial 112
python3 run.py -s 1 --trial 112 -seed 0 --done_ang 3.5
python3 run.py -s 1 --trial 112 -seed 1 --done_ang 3.5
python3 run.py -s 1 --trial 112 -seed 2 --done_ang 3.5
python3 run.py -s 1 --trial 112 -seed 3 --done_ang 3.5
python3 run.py -s 1 --trial 112 -seed 4 --done_ang 3.5

echo trial 113 seed 0
python3 run.py --trial 113 -seed 0 -frames 200000 --done_ang 4
echo trial 113 seed 1
python3 run.py --trial 113 -seed 1 -frames 200000 --done_ang 4
echo trial 113 seed 2
python3 run.py --trial 113 -seed 2 -frames 200000 --done_ang 4
echo trial 113 seed 3
python3 run.py --trial 113 -seed 3 -frames 200000 --done_ang 4
echo trial 113 seed 4
python3 run.py --trial 113 -seed 4 -frames 200000 --done_ang 4

python3 plot_graph.py --trial 113
python3 run.py -s 1 --trial 113 -seed 0 --done_ang 4
python3 run.py -s 1 --trial 113 -seed 1 --done_ang 4
python3 run.py -s 1 --trial 113 -seed 2 --done_ang 4
python3 run.py -s 1 --trial 113 -seed 3 --done_ang 4
python3 run.py -s 1 --trial 113 -seed 4 --done_ang 4

echo trial 114 seed 0
python3 run.py --trial 114 -seed 0 -frames 200000 --done_ang 4.5
echo trial 114 seed 1
python3 run.py --trial 114 -seed 1 -frames 200000 --done_ang 4.5
echo trial 114 seed 2
python3 run.py --trial 114 -seed 2 -frames 200000 --done_ang 4.5
echo trial 114 seed 3
python3 run.py --trial 114 -seed 3 -frames 200000 --done_ang 4.5
echo trial 114 seed 4
python3 run.py --trial 114 -seed 4 -frames 200000 --done_ang 4.5

python3 plot_graph.py --trial 114
python3 run.py -s 1 --trial 114 -seed 0 --done_ang 4.5
python3 run.py -s 1 --trial 114 -seed 1 --done_ang 4.5
python3 run.py -s 1 --trial 114 -seed 2 --done_ang 4.5
python3 run.py -s 1 --trial 114 -seed 3 --done_ang 4.5
python3 run.py -s 1 --trial 114 -seed 4 --done_ang 4.5