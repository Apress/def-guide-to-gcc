/*
 * Function that actually does the Fibonacci calculation
 */

int calc_fib(int n) {
#ifdef DEBUG
  printf("calc_fib called with %d\n", n);
#endif
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else
    return((calc_fib(n-2) + calc_fib(n-1)));
}

