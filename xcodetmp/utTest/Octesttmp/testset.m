//
//  testset.m
//  utTest
//
//  Created by イイイ アアア on 13/12/20.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "testset.h"

#import <UIKit/UIKit.h>
//#import "application_headers" as required

@implementation testset

// All code under test is in the iOS Application
- (void)testAppDelegate
{
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
}

@end
