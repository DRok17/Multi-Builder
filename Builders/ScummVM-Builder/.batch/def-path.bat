:MENU
@ECHO OFF
mode 50,12
set /p fold=< .\def-vita-path.txt
set /p appver=< .\appver.txt
Title SCUMMVM-BUILDER
ECHO                  SCUMMVM-BUILDER
ECHO                        %appver%
ECHO ..................................................
ECHO.
ECHO Current Path : %fold%
ECHO.
@set /p drompath="Data Folder Path: "
@echo off
@echo|set /p="%drompath%"> "./def-vita-path.txt"
exit
