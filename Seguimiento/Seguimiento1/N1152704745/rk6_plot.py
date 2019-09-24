import numpy as np
import matplotlib.pyplot as plt
import os

cmd1 = "g++ -o rk6 rk6.cpp"
cmd2 = "./rk6 > data.csv"

cmds = [cmd1, cmd2]

for cmd in cmds:
    os.system(cmd)

data = np.genfromtxt("data.csv", delimiter=",")

data_10 = data[:10]
data_100 = data[10:110]
data_1000 = data[110:1110]
data_10000 = data[1110:]

dat = [data_10,data_100,data_1000,data_10000]

div = []

for data in dat[::-1]:
    div.append(np.mean(np.abs(data[:,2]-data[:,1])))
    
fig, ax = plt.subplots(nrows=1, ncols=3, figsize=(15,5))

ax[0].plot(dat[-1][:,0], dat[-1][:,-1],"c",label="Exact")
ax[2].plot(range(len(div)), div)

for dat,fmt in zip(dat,["r","g","b","k"]):
    ax[0].plot(dat[:,0], dat[:,1], fmt+"-", label="Step num: {}".format(int(len(dat[:,0]))))
    ax[1].plot(dat[:,0], np.abs(dat[:,2] - dat[:,1]), fmt+"-")

ax[1].set_yscale("log")
ax[0].legend()

ax[0].set_xlim(0,5)

plt.show()

os.system("rm data.csv")
