//
//  TestAppDelegate.h
//  Test_AbsoluteTimeUtils
//
//  Created by bach on 07.08.12.
//  Copyright (c) 2012 bach. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AbsoluteTimeUtils.h"

@interface TestAppDelegate : NSObject <NSApplicationDelegate>


@property (assign) IBOutlet NSWindow *window;
@property (readwrite) NSUInteger counter;
@property (readwrite) CGFloat deltaT;


@end
