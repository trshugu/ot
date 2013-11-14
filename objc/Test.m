#import <stdio.h>
#import "Test.h"

@implementation Teste
- (void) method {
printf("Kitty on your lap\n");
printf("My Name is %s\n", self->name);
return;
}

- (void) setName:(char*)p_n
{
self->name = p_n;
return;
}

- (char*) getName
{
return self->name;
}
@end
