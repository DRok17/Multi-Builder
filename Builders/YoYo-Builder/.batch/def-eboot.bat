:MENU
@ECHO OFF
mode 33,12
set /p appver=< .\appver.txt
Title YOYO-BUILDER
ECHO            YOYO-BUILDER
ECHO.
ECHO .................................
ECHO.
ECHO        * Eboot Selector *
ECHO.
ECHO      1 - Standalone.bin
ECHO      2 - Standalone_video.bin
ECHO.
ECHO      E - Update Eboots
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO STANDARD
IF %M%==2 GOTO VIDEO
IF %M%==e GOTO UPDATE
IF %M%==E GOTO UPDATE
:UPDATE
cd .
start update-OUT.bat
GOTO MENU

:STANDARD
@echo off
IF EXIST ..\eboots\standalone.bin (
    del "..\eboot.bin" 
    copy "..\eboots\standalone.bin" ".."
    cd ..
    ren standalone.bin eboot.bin
    cd .\.batch
    GOTO CFG
  ) ELSE (
    GOTO EOF
  )
:VIDEO
@echo off
IF EXIST ..\eboots\standalone_video.bin (
    del "..\eboot.bin" 
    copy "..\eboots\standalone_video.bin" ".."
    cd ..
    ren standalone_video.bin eboot.bin
    cd .\.batch
    GOTO CFG
  ) ELSE (
    GOTO EOF
  )
:CFG
:EOF
exit
