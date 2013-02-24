//
//  TestAppDelegate.m
//  Test_AbsoluteTimeUtils
//
//  Created by bach on 07.08.12.
//  Copyright (c) 2012 bach. All rights reserved.
//

#import "TestAppDelegate.h"


NSTimer *timer;
AbsoluteTimeUtils *t;

@implementation TestAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	t = [[AbsoluteTimeUtils alloc] init];
	[self setCounter: 0];
	[self setDeltaT: 0];
	timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector: @selector(handleTimer:) userInfo: nil repeats: YES];
}


- (void) handleTimer: (NSTimer *) timer {	//NSLog(@"%s", __PRETTY_FUNCTION__);
#pragma unused (timer)
	[self setCounter: [self counter]+1];
	[self setDeltaT: [t elapsedMillisecondsAndReset]];
//	[self setDeltaT: [t elapsedSecondsAndReset]];
}


- (BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
	return YES;
}

@end
