import argparse
import pandas as pd
import matplotlib.pyplot as plt
import os

parser = argparse.ArgumentParser(description="")
parser.add_argument("--trial", type=int, default=0, help="trial")
parser.add_argument("--num", type=int, default=0, help="trial")
args = parser.parse_args()

new_log_dir = 'runs_v3/' + f'rwip{args.trial}' + '/new_log'
if not os.path.exists(new_log_dir):
    os.makedirs(new_log_dir)

current_num_files = next(os.walk(new_log_dir))[2]
run_num = len(current_num_files)
new_log_f_name = new_log_dir + f"/SAC_log_{run_num}.csv"
log_f = open(new_log_f_name,"w+")
log_f.write('episode,timestep,reward,raw_reward\n')

log_dir = 'runs_v3/' + f'rwip{args.trial}' + '/log'

log_f_name = log_dir + f'/SAC_log_{args.num}.csv'
print("loading data from : " + log_f_name)
data = pd.read_csv(log_f_name)
data = pd.DataFrame(data)
data['haha'] = data['reward']*0

print("data shape[0]:", data.shape[0])
sum_tmp = 0
for i in range(data.shape[0]):
    if i>= 100:
        data['haha'][i] = data['reward'][i]*100 - sum_tmp
    else:
        data['haha'][i] = data['reward'][i]*(i+1) - sum_tmp
    sum_tmp += data['haha'][i]
    if i >= 99:
        sum_tmp -= data['haha'][i-99]


#for i in range(105):
#   print("episode ", i+1, data['reward'][i], data['haha'][i])

ax = plt.gca()
data.plot(kind='line', x='timestep', y='reward', ax=ax, color='red', linewidth=1.5, alpha=1)
data.plot(kind='line', x='timestep', y='haha', ax=ax, color='red', linewidth=0.5, alpha=1)

plt.show()