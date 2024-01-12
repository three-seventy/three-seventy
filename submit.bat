@echo off
rem  Script:  submit.bat
rem ---------------------------------------------------------------------------
rem  Purpose: uses netcat to send jobstream files to Hercules/MVS socket reader
rem  Author:  Jay Moseley
rem  Date:    Mon April 27, 2020
rem  Updated: Tue April 13, 2121 to use ncat from https://nmap.org/ncat/
rem 
rem ---------------------------------------------------------------------------
echo "Sending contents of %1"
type %1 | ncat --send-only -w1 127.0.0.1 3505
