:MENU
@ECHO OFF
mode 50,12
set /p stycur=< .\z-lastyle-cur.txt
Title RETROBUILDER
ECHO                  RETROBUILDER
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
