# Frequently Asked Questions



## What does the Disabled wait state message issued during IPL mean?

There are several reasons why a mainframe CPU in Hercules enters a disabled wait state durin an IPL.

Whilst in this state we see MIPS and I/O are zero and the instruction counter does not increase. Here the Program Status Word (PSW) remains fixed.
```
PSW=0106000080001111     instcnt 13,019,799; mips 0.000; I/O      0
```

Typically the reason would be an error condition found during IPL will be some missing component (or is incompatible). 

In the case of building the starter system, for example we see a few times the PSW ending in 1111 successful DASD initialization; at other times in the same process we see a PSW ending in FFFF indicating console input is required.

Example:
```
HHCCP077I 0009:Sense=INTREQ
HHCCP011I CPU0000: Disabled wait state
          PSW=000200FF 80000005
```

You can look up the last three digits of the PSW in the list of codes in the MVS System Codes manual (GC28-1780) and even the current version of the manual will work.  

e.g. The explanation given in the manual for code 005 is: An I/O interruption during initial program load (IPL) indicated a unit check.

The four digit number - 0009 - preceding the colon indicates the physical device address for the device (see the Hercules' configuration file, or IOGEN file) which is causing the problem.  After the colon the system interprets this for us: INTREQ or Intervention Required.


