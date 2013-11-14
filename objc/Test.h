#import <stdio.h>
//#import <objc/Object.h>
#import <Foundation/NSObject.h>
#import <Foundation/Foundation.h>

@interface Teste : NSObject{
  char *name;
}

-(void)method;
-(void)setName:(char*)p_n;
-(char*)getName;
@end
