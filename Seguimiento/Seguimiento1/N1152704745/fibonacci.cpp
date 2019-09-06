#include <iostream>

int main(){
  unsigned long long int f_i=0, f_ip1=1;

  for(int i=1; i<100; i++){
    
    unsigned long long int f_ip2 = f_i + f_ip1;
    /*
    if (f_ip2%2 == 0){
      std::cout << f_ip2 << std::endl;
    }
    */

    std::cout << f_ip2 << std::endl;
    
    f_i = f_ip1;
    f_ip1 = f_ip2;
  }
}
