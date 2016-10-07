#include <objc/Object.h>
#include <stdlib.h>

@interface Hello:Object
{
  // Empty because no instance variables are used
}

- (void)msg;

@end

#include <stdio.h>

@implementation Hello

- (void)msg
{
	printf("Hello, world!\n");
}

@end

int main(void)
{
	id myHello;
	myHello=[Hello new];   // or myHello = [[Hello alloc] init];

	[myHello msg];

	[myHello free];
	return EXIT_SUCCESS;
}

