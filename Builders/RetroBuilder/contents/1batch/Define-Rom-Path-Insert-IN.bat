@echo off

cd ".."

start z-filechange.bat

timeout 1 >nul

cd "."

start z-rename.bat

timeout 1 >nul

exit
