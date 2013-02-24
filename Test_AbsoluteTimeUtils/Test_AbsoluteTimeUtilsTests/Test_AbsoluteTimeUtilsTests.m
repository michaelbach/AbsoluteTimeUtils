//
//  Test_AbsoluteTimeUtilsTests.m
//  Test_AbsoluteTimeUtilsTests
//
//  Created by bach on 07.08.12.
//  Copyright (c) 2012 bach. All rights reserved.
//

#import "Test_AbsoluteTimeUtilsTests.h"

static 	AbsoluteTimeUtils *t;


@implementation Test_AbsoluteTimeUtilsTests

- (void)setUp {
    [super setUp];
	
	t = [[AbsoluteTimeUtils alloc] init];
	STAssertNotNil(t, @"Could not create instance.");
}

- (void)tearDown{
    // Tear-down code here.
    [super tearDown];
}

- (void)testExample {
//    STFail(@"Unit tests are not implemented yet in Test_AbsoluteTimeUtilsTests");
	
	[t reset];
	STAssertTrue([t elapsedMilliseconds] < 1, @"Unit tests");
	STAssertTrue([t elapsedSeconds] < 1, @"Unit tests");
	
}

@end
