:MENU
@ECHO OFF
mode 50,12
set /p stycur=< .\z-lastyle-cur.txt
set /p appver=< .\appver.txt
Title SCUMMVM-BUILDER
ECHO                   SCUMMVM-BUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO Current Style : %stycur%
ECHO.
@set /p stynew="New Style: "
@echo off
@echo|set /p="%stynew%"> "./z-lastyle-new.txt"
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
exit