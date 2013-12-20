//
//  Octesttmp.m
//  Octesttmp
//
//  Created by イイイ アアア on 13/12/20.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Octesttmp.h"

@implementation Octesttmp

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
  - (void)testGreeting
  {
    counter_++;
    utTest* obj = [[[utTest alloc] init] autorelease];
    STAssertTrue([[obj greeting] isEqualToString:@"x"],
                 @"failed");
  }
  
    [super tearDown];
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in Octesttmp");
}

@end
