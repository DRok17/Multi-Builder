:MENU
@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 34,17
set /p appver=< .\appver.txt
set /p app=< .\app.txt
Title %app%
ECHO          %app%
ECHO.
ECHO ..................................
ECHO.
ECHO    * Simple VPK Creation Tools *
ECHO.
ECHO      1 - Input Folder
ECHO      2 - Create VPK
ECHO      3 - Wipe Input/Contents
ECHO.
ECHO     * Settings and Options *
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
IF %M%==v GOTO VPKF
IF %M%==v GOTO VPKF
IF %M%==M GOTO MULTI
IF %M%==m GOTO MULTI
IF %M%==r GOTO RESTART

:MULTI
cd "../../../.batch"
start .Multi-Builder.bat
GOTO EOF

:DEFSTY
cd .
start def-style.bat
GOTO MENU

:INPF
cd "../../../.batch"
start OpenInputFolderOUT.bat
cd %~dp0
GOTO MENU

:VPKF
cd "../../../.batch"
start OpenVPKFolderOUT.bat
cd %~dp0
GOTO MENU

:PNG
cd "../../../.batch"
start PNGConvertOUT.bat
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

:RESTART
GOTO MENU

:EOF
exit
