import numpy as np

np.random.seed(1)

for i in range(10):
    theta_rod = np.random.uniform(low=-3.5, high=3.5) * 3.1415926 / 180
    print(theta_rod)