//
//  AbsTime.h
//  StimulatorSimulator
//
//  Created by bach on 13.01.10.
//  Copyright 2010 Prof. Michael Bach. All rights reserved.
//
//	History
//	=======
//
//	2012-08-07	parted from the deprecated "UpTime()" et al.
//

#import <Cocoa/Cocoa.h>


@interface AbsoluteTimeUtils : NSObject


- (id)		init;

//	mark the current time as start for the elapsed… functions
- (void)	reset;

//	milliseconds since the last reset
@property (readonly) double elapsedMilliseconds;
@property (readonly) double elapsedMillisecondsAndReset;

@property (readonly) double elapsedSeconds;
@property (readonly) double elapsedSecondsAndReset;

// difference between two AbsoluteTime values, returned in milliseconds
//- (double)	delta2MillisecondsFrom: (AbsoluteTime) from To: (AbsoluteTime) to;

// prints via NSLog
- (void)	logMilliseconds;
- (void)	logMillisecondsAndReset;
@end



// Usage:
//	#import "AbsoluteTimeUtils.h"
// 	AbsoluteTimeUtils *t = [[AbsoluteTimeUtils alloc] init];
//	[t logMilliseconds]
