#include <stdio.h>

void here(void)
{
  printf("Function %s in %s\n",  __FUNCTION__, __FILE__);
  printf("Pretty Function %s in %s\n",  __PRETTY_FUNCTION__, __FILE__);
}

int main(void)
{
        here();
        return 0;
}

