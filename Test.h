#import <stdio.h>
#import <objc/Object.h>

@interface Test : Object
{
char *name;
}
- (void) method;
- (void) setName:(char*)p_n;
- (char*) getName;
@end
