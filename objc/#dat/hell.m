#import "hell.h"

@implementation HelloWorld
- (void) hello
{
  printf("Hell World.\n");
}
@end

int main(int argc, char **argv)
{
  id obj = [HelloWorld alloc];
  [obj hello];
  return 0;
}
