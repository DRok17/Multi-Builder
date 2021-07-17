:MENU
@ECHO OFF
mode 50,12
set /p appver=< .\appver.txt
Title RETROBUILDER %appver%
set /p fold=< ..\1resources\sys\def-rom-path.txt
@echo|set /p="%fold%"> "../1resources/sys/prv-rom-path.txt"
set /p prvp=< ..\1resources\sys\prv-rom-path.txt
ECHO                    RETROBUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO Current Folder : %fold%
ECHO.
@set /p drompath="Rom Folder Name: "
@echo off
@echo|set /p="%vita%%drompath%"> "../1resources/sys/def-rom-path.txt"
cd "."
start Define-Rom-Path-Insert-OUT.bat
exit
