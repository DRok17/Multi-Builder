@echo off

cd "..\1resources\games\GBA\1gameinput\"

start /min zz-OLD-2PrepCore-1coreinput.bat-SC.bat

timeout 3 >nul

cd ".\1gameinput"

start /min zz-OLD-3MoveCore-zzz-CoreInput.bat-SC.bat

exit
