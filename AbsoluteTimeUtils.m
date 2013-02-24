//
//  AbsTime.m
//  StimulatorSimulator
//
//  Created by bach on 13.01.10.
//  Copyright 2010 Universitäts-Augenklinik. All rights reserved.
//
/*
 2012-08-03 DEPRECATED!!!
 The officially approved methods are those that Mach exports in kern/clock.h. These include the following:
 void clock_get_uptime(uint64_t *result);
 */
#import "AbsoluteTimeUtils.h"
#include <mach/mach_time.h>


@implementation AbsoluteTimeUtils


uint64_t timeAtReset;
mach_timebase_info_data_t sTimebaseInfo;


-(id) init {	//	NSLog(@"%s", __PRETTY_FUNCTION__);
	if ((self = [super init])) {
		mach_timebase_info(&sTimebaseInfo);
		[self reset];
	}
	return self;
}


//	mark the current time as start for the elapsed… functions
- (void) reset {
	timeAtReset = mach_absolute_time();
}


//	milliseconds since the last reset
- (double) elapsedMilliseconds {
//	http://developer.apple.com/library/mac/#qa/qa1398/_index.html
    uint64_t elapsedNano = (mach_absolute_time()-timeAtReset) * sTimebaseInfo.numer / sTimebaseInfo.denom;
	return (1E-6L * UInt64ToLongDouble(elapsedNano));
}


//	milliseconds and reset
- (double) elapsedMillisecondsAndReset {
	double r = [self elapsedMilliseconds];
	timeAtReset = mach_absolute_time();
	return r;
}


- (double) elapsedSeconds {
	return ([self elapsedMilliseconds] / 1000.0);
}


- (double) elapsedSecondsAndReset {
	double r = [self elapsedSeconds];
	timeAtReset = mach_absolute_time();
	return r;
}


// difference between 2 AbsoluteTime values returned in milliseconds
//- (double) delta2MillisecondsFrom: (AbsoluteTime) from To: (AbsoluteTime) to {
//	return (1E-6L * UInt64ToLongDouble(UnsignedWideToUInt64(AbsoluteDeltaToNanoseconds(to, from))));
//}


- (void) logMilliseconds {
	NSLog(@"∆t: %f ms", self.elapsedMilliseconds);
}


- (void) logMillisecondsAndReset {
	NSLog(@"∆t: %f ms", self.elapsedMillisecondsAndReset);
}

@end
