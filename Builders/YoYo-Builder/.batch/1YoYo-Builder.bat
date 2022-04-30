:MENU
@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 32,19
set /p appver=< .\appver.txt
Title YOYO
ECHO           YOYO-BUILDER
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
ECHO      5 - Game Configuration
ECHO      6 - Eboot Selector
ECHO.
ECHO      V - VPK Folder
ECHO.
SET /P M=Type #, M or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF
IF %M%==2 GOTO EVPK
IF %M%==3 GOTO WIPE
IF %M%==4 GOTO DEFSTY
IF %M%==5 GOTO GAMECFG
IF %M%==6 GOTO EBOOT
IF %M%==v GOTO VPKF
IF %M%==v GOTO VPKF
IF %M%==M GOTO MULTI
IF %M%==m GOTO MULTI
IF %M%==r GOTO RESTART

:RESTART
GOTO MENU

:MULTI
cd "../../../.batch"
start .Multi-Builder.bat
GOTO EOF

:DEFSTY
cd .
start def-style.bat
GOTO MENU

:EBOOT
cd .
start def-eboot.bat
GOTO MENU

:GAMECFG
cd .
start def-cfg.bat
GOTO MENU

:INPF
cd "../../../.batch"
start OpenInputFolderOUT.bat
cd "../Builders/YOYO-Builder/.batch"
GOTO MENU

:VPKF
cd "../../../.batch"
start OpenVPKFolderOUT.bat
cd "../Builders/YOYO-Builder/.batch"
GOTO MENU

:PNG
cd "../../../.batch"
start PNGConvertOUT.bat
cd "../Builders/YOYO-Builder/.batch"
GOTO MENU

:PACKVPK
cd ..
start z-5YoYo-Builder-VPK.bat
cd "./.batch"
GOTO MENU

:EVPK
cd .
start EasyVPK-OUT.bat
GOTO MENU

:WIPE
cd .
start zzz-Wipe.bat
cd "../../../.batch"
start zzz-Wipe.bat
cd "../Builders/YOYO-Builder/.batch"
GOTO MENU

:EOF
exit
