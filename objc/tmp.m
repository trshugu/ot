#import "tmp.h"
int main(void)
{
/*
*/




/*
// NSMutableString�̑���
NSMutableString* str = [NSMutableString stringWithString:@"Welcome"];
[str appendString:@"Objective-C."];
[str insertString:@"=to=" atIndex:7];
[str deleteCharactersInRange:NSMakeRange(14, 6)];
NSLog(@"%@",str);
*/

/*
NSString* str = @"Welcome to Objective-C.";
// ������(�o�C�g��)�m��
NSMutableString* mu = [NSMutableString stringWithCapacity:1];
[mu setString:str];
NSLog(@"%@",mu);

// �����ŏ�����
NSMutableString* mb = [NSMutableString stringWithString:str];
NSLog(@"%@",mb);
*/

/*
// ��������
NSString* str = @"Welcome to Objective-C.";
NSArray* re = [str componentsSeparatedByString:@"Object"];
NSLog(@"%@",re);

// ��������
NSRange ra = [str rangeOfString:@"Object"];
NSLog(@"%i - %i.",ra.location,ra.length);

// �����u��
NSString* rep = [str stringByReplacingOccurrencesOfString: @"Objective-C" withString:@"AppleScript"];
NSLog(@"%@",rep);

// ��������
NSRange r = NSMakeRange(5, 7);
NSString* res = [str stringByReplacingCharactersInRange:r withString:@"*******"];
NSLog(@"%@",res);
*/


/*
// substr
NSString* str = @"Welcome to Objective-C.";
NSString* str2 = [str substringWithRange:NSMakeRange(5, 7)];
NSLog(@"%@",str2);
*/


/*
// �t�H�[�}�b�g�e�L�X�g
NSString* str = @"Hello";
NSString* format = @",Miss %@. How are you?";
str = [str stringByAppendingFormat:format,@"Hanako"];
NSLog(@"%@",str);
*/

/*
// �������r
NSString* str1 = @"Hello";
NSString* str2 = [@"Hell" stringByAppendingString:@"o"];
BOOL res = [str1 isEqualToString:str2];
NSLog(res ? @"YES!" : @"No..");
// �����I�u�W�F�N�g��r
BOOL resu = [str1 isEqual:str2];
NSLog(resu ? @"YES!" : @"No..");
// �����I�u�W�F�N�g�炵���E�E�E
*/


/*
// length
int n = [@"Welcome to Objective-C." length];
NSLog(@"count: %i",n);
*/

/*
// �����񌋍�����
NSString* str = @"Hello,";
str = [str stringByAppendingString:@"Hanako"];
NSLog(@"%@",str);
*/

/*
// Date�^
NSDate* dt = [NSDate date];
NSLog(@"%@",dt);
*/


/*
// NSLog��NSString�C���X�^���X
NSString* str = @"Hello";
NSLog(@"%@",str);
*/

/*
// �Z���N�^
@interface A : NSObject
- (void) Write;
@end

@implementation A
- (void) Write {
  printf("I am the born of my sword.\n");
}
@end

  id obj;
  SEL method;

  obj = [A new];
  method = @selector(Write);
  [obj perform:method];
*/

/*
// �^�w��
  //id obj1 = [A new];
  //id obj2 = [Object new];

  //[obj1 Write];
  //[obj2 Write];

  A * obja = [A new];
  [obja Write];
  //[obja free];
*/


/*

@interface Point : NSObject
{
  int x, y;
}
- (void)setPoint:(int)ptx int:(int)pty;
- (int)getX;
- (int)getY;
@end

@implementation Point
- (void)setPoint:(int)x int:(int)y
{
  self->x = x;
  self->y = y;
}

- (int)getX
{
  return x;
}
- (int)getY
{
  return y;
}
@end


  id point1 , point2;
  point1 = [Point alloc];
  point2 = [Point alloc];

  [point1 setPoint:32 int:64];
  [point2 setPoint:256 int:128];

  printf("point1:X=%d, Y=%d\n", [point1 getX] , [point1 getY]);
  printf("point2:X=%d, Y=%d\n", [point2 getX] , [point2 getY]);
*/


/*
// �ǂݍ��݂�������
//#import <objc/Object.h>
//#import "Test.h"
#import "Test.m"

char *name = "suzuki ichrou";
id obj = [Test alloc];
[obj setName:name];
printf("main: name -> %s \n", [obj getName]);
[obj method];
[[Test alloc] method];
*/

/*
// �G���[���łăN���X��`�ł��Ȃ���GNUstep�����łł���
#include <Foundation/NSObject.h>
// import�͑��d�C���N���[�h�K�[�h��
@interface Kurasu :NSObject
{
   int x;
}
- (void)method;
- (int)getX;
@end

@implementation Kurasu
- (void)method {
  printf("Kitty on your lap\n");
}
- (int)getX {
  return x;
}
@end

id obj = [Kurasu alloc];
[obj method];
*/


/*
// ������
@interface HelloWorld : NSObject
- (void) hello;
@end

@implementation HelloWorld
- (void) hello
{
  printf("Hello World.\n");
}
@end

  id obj = [HelloWorld alloc];
  [obj hello];
  return 0;


*/


/*
  printf("hell\n");
  printf("world\n");
*/
  
  return 0;
}
