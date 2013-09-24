#import "tmp.h"
int main(void)
{
/*
*/




/*
// NSMutableStringの操作
NSMutableString* str = [NSMutableString stringWithString:@"Welcome"];
[str appendString:@"Objective-C."];
[str insertString:@"=to=" atIndex:7];
[str deleteCharactersInRange:NSMakeRange(14, 6)];
NSLog(@"%@",str);
*/

/*
NSString* str = @"Welcome to Objective-C.";
// メモリ(バイト数)確保
NSMutableString* mu = [NSMutableString stringWithCapacity:1];
[mu setString:str];
NSLog(@"%@",mu);

// 引数で初期化
NSMutableString* mb = [NSMutableString stringWithString:str];
NSLog(@"%@",mb);
*/

/*
// 文字分割
NSString* str = @"Welcome to Objective-C.";
NSArray* re = [str componentsSeparatedByString:@"Object"];
NSLog(@"%@",re);

// 文字検索
NSRange ra = [str rangeOfString:@"Object"];
NSLog(@"%i - %i.",ra.location,ra.length);

// 文字置換
NSString* rep = [str stringByReplacingOccurrencesOfString: @"Objective-C" withString:@"AppleScript"];
NSLog(@"%@",rep);

// 文字入替
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
// フォーマットテキスト
NSString* str = @"Hello";
NSString* format = @",Miss %@. How are you?";
str = [str stringByAppendingFormat:format,@"Hanako"];
NSLog(@"%@",str);
*/

/*
// 文字列比較
NSString* str1 = @"Hello";
NSString* str2 = [@"Hell" stringByAppendingString:@"o"];
BOOL res = [str1 isEqualToString:str2];
NSLog(res ? @"YES!" : @"No..");
// 文字オブジェクト比較
BOOL resu = [str1 isEqual:str2];
NSLog(resu ? @"YES!" : @"No..");
// 同じオブジェクトらしい・・・
*/


/*
// length
int n = [@"Welcome to Objective-C." length];
NSLog(@"count: %i",n);
*/

/*
// 文字列結合風味
NSString* str = @"Hello,";
str = [str stringByAppendingString:@"Hanako"];
NSLog(@"%@",str);
*/

/*
// Date型
NSDate* dt = [NSDate date];
NSLog(@"%@",dt);
*/


/*
// NSLogとNSStringインスタンス
NSString* str = @"Hello";
NSLog(@"%@",str);
*/

/*
// セレクタ
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
// 型指定
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
// 読み込みも動いた
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
// エラーがでてクラス定義できない→GNUstep導入でできた
#include <Foundation/NSObject.h>
// importは多重インクルードガードつき
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
// 成功例
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
