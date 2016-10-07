/* Compiling and running this on a sample system produces output 
   like the following:
 
   $ gcc glibc_version.c -o glibc_version
   $ ./glibc_version
   2.2.93.5

 */

#include <stdio.h>
#include <gnu/libc-version.h>
int main (void) {
    puts (gnu_get_libc_version ());
    return 0;
}


