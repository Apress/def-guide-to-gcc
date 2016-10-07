/* 
 * Simple program to print a certain number of values
 *  in the Fibonacci sequence.
 */

#include <stdio.h>
#include <stdlib.h>

int calc_fib(int n);

int main(int argc, char *argv[]) {
    int i,n;

    if (argc == 2)
      n = atoi(argv[1]);
    else {
      printf("Usage: fibonacci num-of-sequence-values-to-print\n");
      exit(-1);
    }
    for (i=0; i < n; i++)
      printf("%d ", calc_fib(i));
    printf("\n");
    return(0);
}
