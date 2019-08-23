import numpy as np
import matplotlib.pyplot as plt
from scipy.constants import pi, epsilon_0
from mpl_toolkits.mplot3d import Axes3D

class particle():
    def __init__(self, pos, vel, mass, charge):
        self.r = np.array(pos).astype('float64')
        self.v = np.array(vel).astype('float64')
        self.mass = mass
        self.charge = charge

    def field(self, r, r_prime):
        '''Returns the value of the electric produced by the particle at a distance |r-r_prime|.'''
        return (1./(4.*pi*epsilon_0))*self.charge*(r - r_prime)/np.linalg.norm(r-r_prime)**3

def trajectory(p1, p2, B):    
    dt = 0.01

    r1 = [[],[],[]]
    r2 = [[],[],[]]

    for n in range(10000):
        dv_01 = p1.charge/p1.mass*(p2.field(p1.r,p2.r) + np.cross(p1.v,B))*dt
        p1.v += dv_01

        dv_02 = p2.charge/p2.mass*(p1.field(p2.r,p1.r) + np.cross(p2.v,B))*dt
        p2.v += dv_02

        dr_01 = dt*p1.v
        p1.r += dr_01

        dr_02 = dt*p2.v
        p2.r += dr_02

        for i in range(3):
            r1[i].append(p1.r[i])
            r2[i].append(p2.r[i])
            
    fig = plt.figure()
    ax = plt.axes(projection="3d")

    ax.plot3D(r1[0], r1[1], r1[2], 'blue', label="Particle with charge {}".format(p1.charge), linewidth=1)
    ax.plot3D(r2[0], r2[1], r2[2], 'orange', label="Particle with charge {}".format(p2.charge), linewidth=1)
    ax.legend()

    plt.show()

if __name__=="__main__":
    r1, v1 = [0,0,0], [0,0,0]
    r2, v2 = [1,0,0], [0,0,0]
    mass = 10.
    charge = 1.
    B = np.array([0,0,10.])
    
    part1 = particle(r1, v1, mass, charge)
    part2 = particle(r2, v2, mass, -1*charge)

    trajectory(part1, part2, B)
