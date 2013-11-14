@echo off
rem gcc -o tmp tmp.m && tmp
gcc -o tmp.exe tmp.m -I C:\GNUstep\GNUstep\System\Library\Headers -L C:\GNUstep\GNUstep\System\Library\Libraries -lobjc -lgnustep-base -fconstant-string-class=NSConstantString && tmp
