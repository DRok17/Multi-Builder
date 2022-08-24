:MENU
@ECHO OFF
mode 32,17
set /p appver=< .\appver.txt
Title FAKE08-BUILDER
ECHO          FAKE08-BUILDER
ECHO.
ECHO ................................
ECHO.
ECHO   * Simple VPK Creation Tools *
ECHO.
ECHO      1 - Input Folder
ECHO      2 - Simple VPK
ECHO      3 - Wipe Input/Contents
ECHO.
ECHO    * Settings and Options *
ECHO.
ECHO      4 - LiveArea Style
ECHO.
ECHO      V - VPK Folder
ECHO.
SET /P M=Type #, M or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF
IF %M%==2 GOTO EVPK
IF %M%==3 GOTO WIPE
IF %M%==4 GOTO DEFSTY
IF %M%==X GOTO DEFPATH
IF %M%==M GOTO MULTI
IF %M%==m GOTO MULTI
IF %M%==v GOTO VPKF
IF %M%==v GOTO VPKF
IF %M%==i GOTO INFO
IF %M%==I GOTO INFO
IF %M%==r GOTO RESTART

:RESTART
GOTO MENU

:INFO
cd .
start INFO-FAKE08-BUILDER.bat
GOTO MENU

:VPKF
cd "../../../.batch"
start OpenVPKFolderOUT.bat
cd %~dp0
GOTO MENU

:MULTI
cd "../../../.batch"
start .Multi-Builder.bat
GOTO EOF

:DEFSTY
cd .
start def-style.bat
GOTO MENU

:DEFPATH
cd .
start def-path.bat
GOTO MENU

:INPF
cd "../../../.batch"
start OpenInputFolderOUT.bat
cd %~dp0
GOTO MENU

:PNG
cd "../../../.batch"
start PNGConvertOUT.bat
cd %~dp0
GOTO MENU

:PACKVPK
cd ..
start z-5FAKE08-Builder-VPK.bat
cd %~dp0
GOTO MENU

:EVPK
cd .
start EasyVPK-OUT.bat
GOTO MENU

:WIPE
cd .
start /min zzz-Wipe.bat
cd "../../../.batch"
start /min zzz-Wipe.bat
cd %~dp0
GOTO MENU

:EOF
exit
