#import "tmp.h"

int main(void)
{
/*
*/





/*
// NSThread
MyTestClass* obj1 = [MyTestClass myTestClassToEndCount:5];
MyTestClass* obj2 = [MyTestClass myTestClassToEndCount:3];

[NSThread detachNewThreadSelector: @selector(printMessage:) toTarget:obj1 withObject:@"first"];
[NSThread detachNewThreadSelector: @selector(printMessage:) toTarget:obj2 withObject:@"second"];
NSLog(@"start!!");
 
// 終了しないようにしておく
[[NSRunLoop currentRunLoop] run];
*/


/*
// NSTimer
MyTestClass* obj = [MyTestClass myTestClassToEndCount:3];
NSDictionary* data = [NSDictionary dictionaryWithObject:@"timer message" forKey:@"msg"];
NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:obj selector:@selector(printMessage:) userInfo:data repeats:YES];
NSLog(@"start!!");

// 終了しないようにしておく
[[NSRunLoop currentRunLoop] run];
*/

/*
// 非同期通信とデリゲート
NSString* address = @"http://www.apple.com/";
NSURL* url = [NSURL URLWithString:address];
NSURLRequest* request = [NSURLRequest requestWithURL:url];
SampleConnectDelegate* delegate = [[SampleConnectDelegate alloc] init];
NSURLConnection* connection = [NSURLConnection
connectionWithRequest:request delegate:delegate];

if (!connection) {
  NSLog(@"Error...");
}

// 終了しないようにしておく
[[NSRunLoop currentRunLoop] run];
*/


/*
// NSURLConnectionによる同期通信
NSString* address = @"http://www.apple.com/";
NSURL* url = [NSURL URLWithString:address];

NSURLRequest* request = [NSURLRequest requestWithURL:url];
NSURLResponse* response = nil;
NSError* error = nil;

NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
NSString* result = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
NSLog(@"%@",result);
*/


/*
// URL情報取得
NSString* address = @"http://apple.com:8080/jp/index?id=acd";
NSURL* url = [NSURL URLWithString:address];
NSLog(@"%@",[url absoluteString]);
NSLog(@"%@",[url port]);
NSLog(@"%@",[url host]);
NSLog(@"%@",[url path]);
NSLog(@"%@",[url query]);
*/


/*
// URLからロード
NSString* path = [NSHomeDirectory() stringByAppendingPathComponent: @"Desktop/data.txt"];
NSURL* url = [NSURL fileURLWithPath:path];
NSError* err;
NSString* str = [NSString stringWithContentsOfURL:url  encoding:NSUTF8StringEncoding error:&err];
NSLog(@"%@",str);

NSString* address = @"http://www.apple.com/";
NSURL* url2 = [NSURL URLWithString:address];
id str2 = [NSString stringWithContentsOfURL:url2 encoding:NSUTF8StringEncoding error:&err];
NSLog(@"%@",str2);
*/


/*
// リンクの作成
NSFileManager* manager = [NSFileManager defaultManager];
NSString* path = [NSHomeDirectory() stringByAppendingPathComponent: @"Documents"];
NSString* path2 = [NSHomeDirectory() stringByAppendingPathComponent: @"Desktop/doc_alias"];
NSError* err;
[manager createSymbolicLinkAtPath:path2 withDestinationPath:path error:&err];
NSLog(@"%@",[manager  destinationOfSymbolicLinkAtPath:path2 error:&err]);
*/

/*
// ファイルのRW
NSString* path = [NSHomeDirectory() stringByAppendingPathComponent: @"Desktop/data.txt"];
NSError* err;
NSString* str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&err];
NSLog(@"%@",str);

str = [str stringByAppendingString: @"** add test**\n"];
NSString* path2 = [NSHomeDirectory() stringByAppendingPathComponent: @"Desktop/saved.txt"];
[str writeToFile:path2 atomically:YES encoding:NSUTF8StringEncoding error:&err];
*/


/*
// ファイルexist
NSFileManager* manager = [NSFileManager defaultManager];
NSString* path = [NSHomeDirectory() stringByAppendingPathComponent: @"Desktop\\data.txt"];
BOOL isdir;
NSLog(@"exists:%@",[manager fileExistsAtPath: path isDirectory:&isdir] ? @"YES" : @"NO");
NSLog(@"isDir:%@",isdir ? @"YES" : @"NO");
NSLog(@"canRead:%@",[manager isReadableFileAtPath: path] ? @"YES" : @"NO");
NSLog(@"canSave:%@",[manager isWritableFileAtPath: path] ? @"YES" : @"NO");
NSLog(@"canExec:%@",[manager isExecutableFileAtPath: path] ? @"YES" : @"NO");
NSLog(@"canDele:%@",[manager isDeletableFileAtPath: path] ? @"YES" : @"NO");
*/

/*
// ファイルコピー
NSFileManager* manager = [NSFileManager defaultManager];
NSError* err = nil;
NSString* path = [NSHomeDirectory() 
                  stringByAppendingPathComponent:
                  @"Desktop/data.txt"];
NSString* tpath = [NSHomeDirectory() 
                   stringByAppendingPathComponent:
                   @"Desktop/copyed.txt"];

[manager copyItemAtPath:path toPath: tpath error:&err];

if (err == nil) {
    NSLog(@"copyed.");
} else {
    NSLog(@"%@.",[err localizedDescription]);
}
*/


/*
// パスの構成要素を操作
NSString* path = NSHomeDirectory();
path = [path stringByAppendingPathComponent: @"Desktop"];
NSString* fullpath = [path stringByExpandingTildeInPath];
NSString* shortpath = [path stringByAbbreviatingWithTildeInPath];
NSString* dlpath = [path stringByDeletingLastPathComponent];
NSString* newpath = [path stringByAppendingPathComponent:@"newfile"];

NSLog(@"%@",fullpath);
NSLog(@"%@",shortpath);
NSLog(@"%@",dlpath);
NSLog(@"%@",newpath);
*/

/*
// パスの要素を配列で取得する
NSString* path = NSHomeDirectory();
NSArray* arr = [path pathComponents];
NSLog(@"%@",arr);
*/


/*
// ファイルパスとNSString
NSString* path = NSHomeDirectory();
NSString* shortpath = [path stringByAbbreviatingWithTildeInPath];
NSLog(@"%@",path);
NSLog(@"%@",shortpath);
*/

/*
// 集合の処理
NSMutableSet* set = [NSMutableSet setWithObjects: @"tuyano",@"taro",@"hanako",@"buhi",nil];
NSEnumerator* enm = [set objectEnumerator];
id obj;
while (obj = [enm nextObject]) {
  NSLog(@"%@",obj);
}
*/


/*
// 集合演算
NSMutableSet* set = [NSMutableSet setWithObjects: @"tuyano",@"taro",@"hanako",@"buhi",nil];
NSMutableSet* set2 = [NSMutableSet setWithObjects: @"tuyano",@"ihiro",@"hanako",@"hoge",nil];

[set intersectSet:set2];
NSLog(@"%@",set);
*/



/*
// 集合の操作
NSMutableSet* set = [NSMutableSet setWithCapacity:1];
[set addObject:@"tuyano"];
[set addObject:@"taro"];
[set addObject:@"hanako"];
[set addObject:@"taro"];
[set removeObject:@"taro"];
NSLog(@"%@",set);
*/


/*
// 集合 ユニークな値を保持
NSSet* set = [NSSet setWithObjects: @"tuyano",@"taro",nil];
set = [set setByAddingObject : @"hanako"];
set = [set setByAddingObject : @"taro"];
NSLog(@"%@",set);
*/



/*
NSMutableDictionary* dict = [NSMutableDictionary dictionary];
[dict setObject:@"090-9999-9999" forKey:@"tuyano"];
[dict setObject:@"03-555-5555"forKey:@"taro"];
[dict setObject:@"080-765-4321"forKey:@"hanako"];

[dict removeObjectForKey:@"taro"];
NSLog(@"%@",dict);
*/


/*
// キーの取得
NSDictionary* dic = [NSDictionary dictionaryWithObjectsAndKeys:
  @"090-9999-9999",@"tuyano",
  @"03-555-5555",@"taro",
  @"080-765-4321",@"hanako",nil];
NSArray* keys = [dic allKeys];
id obj;
for (obj in keys){
  id val = [dic objectForKey:obj]; 
  NSLog(@"%@: %@",obj,val);
}
*/


/*
// 連想配列
NSArray* keys = [NSArray arrayWithObjects : @"tuyano",@"taro",@"hanako",nil];
NSArray* vals = [NSArray arrayWithObjects : @"090-9999-9999",@"03-555-5555", @"080-765-4321",nil];
NSDictionary* dic = [NSDictionary dictionaryWithObjects : vals forKeys : keys];
NSLog(@"%@",dic);
*/


/*
// イテレータ
NSMutableArray* arr = [NSMutableArray arrayWithObjects:@"Hello",@"Welcome",@"Bye",nil];
for(id obj in arr){
    NSLog(@"%@",obj);
}

// 逆順で取り出し
NSEnumerator* enm = [arr reverseObjectEnumerator];
id obj;
while (obj = [enm nextObject]) {
    NSLog(@"%@",obj);
}
*/


/*
// オブジェクトの挿入と削除
NSMutableArray* arr = [NSMutableArray arrayWithObjects:@"Hello",@"Welcome",@"Bye",nil];
[arr insertObject:@"Hi" atIndex:1];
[arr removeObject:@"Welcome"];
[arr removeObjectAtIndex:0];
NSLog(@"%@",arr);
*/

/*
// NSMutableArrayとオブジェクトの追加・変更
NSMutableArray* arr = [NSMutableArray arrayWithCapacity:1];
[arr addObject:@"Helo"];
[arr addObject:@"Hi"];
[arr replaceObjectAtIndex:1 withObject:@"Bye!"];
NSLog(@"%@",arr);
*/


/*
// 2つのNSArrayを1つにして出力する
NSArray* arr = [NSArray arrayWithObjects : @"one", @"two", nil];
NSArray* arr2 = [NSArray arrayWithObjects : @"three", @"four", nil];
NSArray* newarr = [arr arrayByAddingObjectsFromArray : arr2];
NSUInteger n = [newarr count];
int i;
for(i = 0;i < n;i++){
  NSLog(@"%i:%@", i, [newarr objectAtIndex : i]);
}
*/


/*
// NSArrayの全要素を出力する
NSArray* arr = [NSArray arrayWithObjects:@"Hello", @"Welcome",@"Bye",nil];
NSUInteger n = [arr count];
int i;
for(i = 0;i < n;i++){
  NSLog(@"%i:%@",i,[arr objectAtIndex:i]);
}
*/

/*
// NSArrayを作成し出力する
NSArray* arr = [NSArray arrayWithObjects:@"Hello",@"Welcome",@"Bye",nil];
NSLog(@"%@",arr);
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
