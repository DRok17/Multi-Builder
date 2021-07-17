@echo off

cd ".\1gameinput"

start zz-OLD-2PrepCore-1coreinput.bat-SC.bat

timeout 3 >nul

cd ".\1gameinput"

start zz-OLD-3MoveCore-zzz-CoreInput.bat-SC.bat

timeout 3 >nul

cd ".\1gameinput"

start zz-OLD-4MoveGame-zzz-GameInput-SNES.bat-SC.bat

exit