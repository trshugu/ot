#import <stdio.h>
#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSThread.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSSet.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSError.h>
#import <Foundation/NSURLConnection.h>
#import <Foundation/NSURLRequest.h>
#import <Foundation/NSRunLoop.h>
#import <Foundation/NSData.h>
#import <Cocoa/Cocoa.h>
#import <time.h>

/*
*/







/*
// NSThread
@interface MyTestClass : NSObject {
  int count;
  int endcount;
}

+(MyTestClass*)myTestClassToEndCount:(int)n;
-(void)setEndCount:(int)n;
-(void)printMessage:(NSString*)s;

@end

@implementation MyTestClass 
+(MyTestClass*)myTestClassToEndCount:(int)n {
  MyTestClass* obj = [[MyTestClass alloc] init];
  [obj setEndCount:n];
  return obj;
}

-(void)setEndCount:(int)n {
  endcount = n;
}

-(void)printMessage:(NSString*)s {
  BOOL flg = YES;
  while (flg) {
    [NSThread sleepForTimeInterval:1.0];
    NSLog(@"%@:%i",s,++count);
    if (endcount == count) {
      flg = NO;
      NSLog(@"end...");
    }
  }
}
@end
*/


/*
// NSTimer
@interface MyTestClass : NSObject {
  int count;
  int endcount;
}

+(MyTestClass*)myTestClassToEndCount:(int)n;
-(void)setEndCount:(int)n;
-(BOOL)checkEnd:(NSTimer*)t;
-(void)printMessage:(NSTimer*)t;

@end

@implementation MyTestClass
+(MyTestClass*)myTestClassToEndCount:(int)n {
  MyTestClass* obj = [[MyTestClass alloc] init];
  [obj setEndCount:n];
  return obj;
}

-(void)setEndCount:(int)n {
  endcount = n;
}

-(void)printMessage:(NSTimer*)t {
  id s = [[t userInfo] objectForKey:@"msg"];
  NSLog(@"%@:%i",s,++count);
  [self checkEnd:t];
}

-(BOOL)checkEnd:(NSTimer*)t {
  BOOL flg = NO;
  if (endcount == count){
    NSLog(@"end.");
    flg = YES;
    [t invalidate];
  }
  return flg;
}
@end
*/


/*
// �񓯊��ʐM�ƃf���Q�[�g
// �f���Q�[�g�N���X�̐錾
@interface SampleConnectDelegate : NSObject {
  NSMutableData* result;
}
@end

// �f���Q�[�g�N���X�̎���
@implementation SampleConnectDelegate
  - (void)connection:(NSURLConnection *)connection
  didReceiveResponse:(NSURLResponse *)response {
    result = [[NSMutableData alloc] init];
  }
  
  - (void)connection:(NSURLConnection *)connection
  didReceiveData:(NSData *)data {
    [result appendData:data];
  }
   
  - (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"%@",result);
  }
@end
*/


/*
// �Z���N�^
@interface Aaa : NSObject
- (void) Writen;
@end

@implementation Aaa
- (void) Writen {
  printf("I am the born of my sword.\n");
}
@end
*/


/*
// �N���X
@interface Pointe : NSObject
{
  int xx, yy;
}
- (void)setPoint:(int)ptx int:(int)pty;
- (int)getX;
- (int)getY;
@end

@implementation Pointe
- (void)setPoint:(int)x int:(int)y
{
  self->xx = x;
  self->yy = y;
}

- (int)getX
{
  return xx;
}
- (int)getY
{
  return yy;
}
@end
*/


/*
// �G���[���łăN���X��`�ł��Ȃ���GNUstep�����łł���
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
*/

