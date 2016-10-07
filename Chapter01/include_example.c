#include <stdio.h>

#include "libxml2/xmlops.h"
#include <netdev/devname.h>

main () {
  printf("Hello, world!\n");
  printf("\tXMLVAR says: %s\n", XMLVAR);
  printf("\tNETVAR says: %s\n", NETVAR);
}
 
