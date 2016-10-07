#include <stdio.h>

void here(void)
{
  printf("Function %s in %s, line %d\n",  __FUNCTION__, __FILE__, __LINE__);
  printf("Pretty Function %s in %s, line %d\n",  __PRETTY_FUNCTION__, __FILE__, __LINE__);
}

int main(void)
{
        here();
        return 0;
}

