©2013 Michael Bach, michael.bach@uni-freiburg.de, michaelbach.de


AbsoluteTimeUtils
=================

To measure absolute timing with better than microsecond precision.
Based on "mach_absolute_time"

 

To insert into your program
-------------------------
*	import "AbsoluteTimeUtils.h"
* 	AbsoluteTimeUtils *t = [[AbsoluteTimeUtils alloc] init];
*	Then, for instance, [t logMilliseconds]
*	standard pattern: surround code to be measured by reset - log


Some details
------------
* "mach_absolute_time" is supposedly currently the most precise timer
* the test program allows to check long-time of many deltas