#!/bin/sh -x
# 	This script creates the following emulated DASD (disk) devices 
# 	needed for the starter system:
# 	
# 		START1	- a compressed 3330 volume (volume ID 111111)
# 		SPOOL0	- a compressed 3330 volume (volume ID 222222) 

export PATH=../../linux/64/bin:${PATH}

echo Changing to dasd subdirectory of the 
cd dasd

echo Creating START1 3330 volume in the build\starter subdirectory of the distribution.
test -e start1.3330 && rm start1.3330
dasdinit -z -a start1.3330 3330 111111

echo Creating SPOOL0 3330 volume in the build\starter subdirectory of the distribution.
test -e spool0.3330 && rm spool0.3330
3330 222222
dasdinit -z -a spool0.3330 3330 222222

ls -l 