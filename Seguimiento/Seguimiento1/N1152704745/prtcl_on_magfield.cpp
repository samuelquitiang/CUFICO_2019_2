#include <iostream>
#include <cmath>

class particle{
public:
  float charge;      // charge of the particle
  float x, y, z;     // position components of the particle
  float vx, vy, vz;  // velocity components of the parcicle
  float m;           // mass of the particle

  // a function to give values to the properties of the particle: charge and mass
  void set_props(float, float);

  // a function to update the state of velocity and position of the particle
  void set_state(float, float, float, float, float, float);
};

void particle::set_props(float c, float M){

  charge = c;
  m = M;
}

void particle::set_state(float X, float Y, float Z, float Vx, float Vy, float Vz){

  x = X;
  y = Y;
  z = Z;

  vx = Vx;
  vy = Vy;
  vz = Vz;
}

int main(){
  particle p;

  p.set_props(1., 1);

  p.set_state(0., 0., 0., 1., 0., 0.);

  int time_steps = 100;
  float dt = 0.01;

  float B_x = 0.;
  float B_y = 0.;
  float B_z = 10.;
  
  float ax, ay, az, vx, vy, vz, x, y, z;
  
  for (int i=0; i<time_steps; i++){    
    ax = p.charge/p.m * (p.vy*B_z - p.vz*B_y);
    ay = p.charge/p.m * (p.vz*B_x - p.vx*B_z);
    az = p.charge/p.m * (p.vx*B_y - p.vy*B_x);
    
    vx = p.vx + ax*dt;
    vy = p.vy + ay*dt;
    vz = p.vz + az*dt;
    
    x = p.x + vx*dt;
    y = p.y + vy*dt;
    z = p.z + vz*dt;

    p.set_state(x,y,z,vx,vy,vz);

    std::cout << p.x << " " << p.y << " " << p.z << " " << std::endl; 
  }

  return 0;
}
