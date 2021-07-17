:MENU
@ECHO OFF
mode 50,12
set /p fold=< .\def-vita-path.txt
set /p appver=< .\appver.txt
Title FAKE08-BUILDER
ECHO                  FAKE08-BUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO Current Path : %fold%
ECHO.
@set /p drompath="Data Folder Path: "
@echo off
@echo|set /p="%drompath%"> "./def-vita-path.txt"
exit
