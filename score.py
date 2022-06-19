import argparse
import pandas as pd
import matplotlib.pyplot as plt

parser = argparse.ArgumentParser(description="")
parser.add_argument("--trial", type=int, default=0, help="trial")
parser.add_argument("--num", type=int, default=0, help="trial")
args = parser.parse_args()

log_dir = 'runs_v3/' + f'rwip{args.trial}' + '/log'

log_f_name = log_dir + f'/SAC_log_{args.num}.csv'
print("loading data from : " + log_f_name)
data = pd.read_csv(log_f_name)
data = pd.DataFrame(data)
data['haha'] = data['reward']


sum_tmp = 0
for i in range(100):
    data['haha'][i] = data['reward'][i]*(i+1) - sum_tmp
    sum_tmp += data['haha'][i]

for i in range(5):
    print(data['reward'][i], data['haha'][i])

ax = plt.gca()
data.plot(kind='line', x='timestep', y='reward', ax=ax, color='red', linewidth=1.5, alpha=1)

#plt.show()