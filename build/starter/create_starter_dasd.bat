REM 	This script creates the following emulated DASD (disk) devices 
REM 	needed for the starter system:
REM 	
REM 		START1	- a compressed 3330 volume (volume ID 111111)
REM 		SPOOL0	- a compressed 3330 volume (volume ID 222222) 

echo Creating START1 3330 volume in the build\starter subdirectory of the distribution.
if exist start1.3330 del start1.3330 /q
echo ..\..\hercules\windows\dasdinit -z -a start1.3330 3330 111111
..\..\hercules\windows\dasdinit -z -a start1.3330 3330 111111

echo Creating SPOOL0 3330 volume in the build\starter subdirectory of the distribution.
if exist spool0.3330 del spool0.3330 /q
echo ..\..\hercules\windows\dasdinit -z -a spool0.3330 3330 222222
..\..\hercules\windows\dasdinit -z -a spool0.3330 3330 222222

dir
pause hit a key to exit