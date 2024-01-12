#!/bin/sh

#	 Script:  submit.bat
#	---------------------------------------------------------------------------
#	 Purpose: uses netcat to send jobstream files to Hercules/MVS socket reader
#	 Author:  Jay Moseley
#	 Date:    Mon April 27, 2020
#	 Updated: Tue April 13, 2121 to use ncat from https://nmap.org/ncat/
#	
#	---------------------------------------------------------------------------
echo "Sending contents of %1"
ncat --send-only -w1 127.0.0.1 3505 < %1
