@echo off
set /p sys=< .\sys-id.txt

cd "."

start /min 1gameinput-GAME.bat

timeout 3 >nul

cd "..\1gameinput"

start /min zz-OLD-2PrepCore-1coreinput.bat-SC.bat

timeout 3 >nul

cd ".\1gameinput"

start /min zz-OLD-3MoveCore-zzz-CoreInput.bat-SC.bat

timeout 3 >nul

cd ".\1gameinput"

start /min zz-OLD-4MoveGame-zzz-GameInput-%sys%.bat-SC.bat

exit





