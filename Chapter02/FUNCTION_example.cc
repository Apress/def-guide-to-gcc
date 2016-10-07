#include <iostream>
using namespace std;

class c {
        public:
        void method_a(void)
        {
          cout << "Function " << __FUNCTION__ <<  " in " << __FILE__ << endl;
          cout << "Pretty Function " << __PRETTY_FUNCTION__ <<  " in " 
               << __FILE__ << endl;
        }
};

int main(void)
{
  c C;
  C.method_a();
  return 0;
}


