#import <stdio.h>
//#import <objc/Object.h>
#include <Foundation/NSObject.h>

@interface Test : NSObject
{
char *name;
}
- (void) method;
- (void) setName:(char*)p_n;
- (char*) getName;
@end
