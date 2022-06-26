#!/bin/sh

echo trial 109 seed 0
python3 run.py --trial 109 -seed 0 -frames 200000 --scores_window_len 20
echo trial 109 seed 1
python3 run.py --trial 109 -seed 1 -frames 200000 --scores_window_len 20
echo trial 109 seed 2
python3 run.py --trial 109 -seed 2 -frames 200000 --scores_window_len 20
echo trial 109 seed 3
python3 run.py --trial 109 -seed 3 -frames 200000 --scores_window_len 20
echo trial 109 seed 4
python3 run.py --trial 109 -seed 4 -frames 200000 --scores_window_len 20

python3 plot_graph.py --trial 109 --scores_window_len 20
python3 run.py -s 1 --trial 109 -seed 0
python3 run.py -s 1 --trial 109 -seed 1
python3 run.py -s 1 --trial 109 -seed 2
python3 run.py -s 1 --trial 109 -seed 3
python3 run.py -s 1 --trial 109 -seed 4

#echo trial 105 seed 0
#python3 run.py --trial 105 -seed 0 -frames 200000 --scores_window_len 20
#echo trial 105 seed 1
#python3 run.py --trial 105 -seed 1 -frames 200000 --scores_window_len 20
#echo trial 105 seed 2
#python3 run.py --trial 105 -seed 2 -frames 200000 --scores_window_len 20
#echo trial 105 seed 3
#python3 run.py --trial 105 -seed 3 -frames 200000 --scores_window_len 20
#echo trial 105 seed 4
#python3 run.py --trial 105 -seed 4 -frames 200000 --scores_window_len 20

#python3 plot_graph.py --trial 105 --scores_window_len 20
#python3 run.py -s 1 --trial 105 -seed 0
#python3 run.py -s 1 --trial 105 -seed 1
#python3 run.py -s 1 --trial 105 -seed 2
#python3 run.py -s 1 --trial 105 -seed 3
#python3 run.py -s 1 --trial 105 -seed 4

#echo trial 106 seed 0
#python3 run.py --trial 106 -seed 0 -frames 200000 --scores_window_len 30
#echo trial 106 seed 1
#python3 run.py --trial 106 -seed 1 -frames 200000 --scores_window_len 30
#echo trial 106 seed 2
#python3 run.py --trial 106 -seed 2 -frames 200000 --scores_window_len 30
#echo trial 106 seed 3
#python3 run.py --trial 106 -seed 3 -frames 200000 --scores_window_len 30
#echo trial 106 seed 4
#python3 run.py --trial 106 -seed 4 -frames 200000 --scores_window_len 30

#python3 plot_graph.py --trial 106 --scores_window_len 30
#python3 run.py -s 1 --trial 106 -seed 0
#python3 run.py -s 1 --trial 106 -seed 1
#python3 run.py -s 1 --trial 106 -seed 2
#python3 run.py -s 1 --trial 106 -seed 3
#python3 run.py -s 1 --trial 106 -seed 4

#echo trial 107 seed 0
#python3 run.py --trial 107 -seed 0 -frames 200000 --scores_window_len 40
#echo trial 107 seed 1
#python3 run.py --trial 107 -seed 1 -frames 200000 --scores_window_len 40
#echo trial 107 seed 2
#python3 run.py --trial 107 -seed 2 -frames 200000 --scores_window_len 40
#echo trial 107 seed 3
#python3 run.py --trial 107 -seed 3 -frames 200000 --scores_window_len 40
#echo trial 107 seed 4
#python3 run.py --trial 107 -seed 4 -frames 200000 --scores_window_len 40

#python3 plot_graph.py --trial 107 --scores_window_len 40
#python3 run.py -s 1 --trial 107 -seed 0
#python3 run.py -s 1 --trial 107 -seed 1
#python3 run.py -s 1 --trial 107 -seed 2
#python3 run.py -s 1 --trial 107 -seed 3
#python3 run.py -s 1 --trial 107 -seed 4

#echo trial 108 seed 0
#python3 run.py --trial 108 -seed 0 -frames 200000 --scores_window_len 50
#echo trial 108 seed 1
#python3 run.py --trial 108 -seed 1 -frames 200000 --scores_window_len 50
#echo trial 108 seed 2
#python3 run.py --trial 108 -seed 2 -frames 200000 --scores_window_len 50
#echo trial 108 seed 3
#python3 run.py --trial 108 -seed 3 -frames 200000 --scores_window_len 50
#echo trial 108 seed 4
#python3 run.py --trial 108 -seed 4 -frames 200000 --scores_window_len 50

#python3 plot_graph.py --trial 108 --scores_window_len 50
#python3 run.py -s 1 --trial 108 -seed 0
#python3 run.py -s 1 --trial 108 -seed 1
#python3 run.py -s 1 --trial 108 -seed 2
#python3 run.py -s 1 --trial 108 -seed 3
#python3 run.py -s 1 --trial 108 -seed 4