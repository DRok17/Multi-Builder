@echo off
set /p id=< ..\contents\bub-id.txt
cd ..
7z a -tzip "%id%.vpk" -r .\build\* .\build\eboot.bin
GOTO CLNUP

:CLNUP
@echo off
move ".\*.vpk*" "..\..\VPK"
del "*.exe*"
del "7z.dll"
del "*.png*"
rmdir /S /Q ".\build"
cd "./.batch"
(echo VPK Done) > VPK-Done.txt
exit
