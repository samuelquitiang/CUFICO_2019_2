#include <iostream>
using namespace std;

int main()
{
  long int f0, f1, fn;
  f0 = 0;
  f1 = 1;
  //cout << f0 << endl;                                                                                                                                       
  for (int i=0; i<100; i++)
    {
      fn = f1+f0;
      if (f0%2 == 0)
        {
          cout << f0 << endl;
        }
      f0 = f1;
      f1 = fn;
    }

  return 0;
}

