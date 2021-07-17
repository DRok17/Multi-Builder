:MENU
@ECHO OFF
mode 33,18
set /p appver=< .\appver.txt
Title BUBBLE-BUILDER
ECHO           BUBBLE-BUILDER
ECHO                %appver%
ECHO .................................
ECHO.
ECHO    * Simple VPK Creation Tools *
ECHO.
ECHO      1 - Input Folder
ECHO      2 - Simple VPK
ECHO      3 - Wipe Input/Contents
ECHO.
ECHO    * Settings and Options *
ECHO.
ECHO      4 - Define LiveArea Style
ECHO      5 - Re-Title/ID VPK
ECHO.
ECHO      V - VPK Folder
ECHO.
SET /P M=Type #, M or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF
IF %M%==2 GOTO EVPK
IF %M%==3 GOTO WIPE
IF %M%==4 GOTO DEFSTY
IF %M%==5 GOTO TID
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
start INFO-Bubble-Builder.bat
GOTO MENU

:VPKF
cd "../../../.batch"
start OpenVPKFolderOUT.bat
cd "../Builders/Bubble-Builder/.batch"
GOTO MENU

:DEFSTY
cd .
start def-style.bat
GOTO MENU

:MULTI
cd "../../../.batch"
start .Multi-Builder.bat
GOTO EOF

:TID
cd .
start TITLEID-OUT.bat
GOTO MENU

:INPF
cd "../../../.batch"
start OpenInputFolderOUT.bat
cd "../Builders/Bubble-Builder/.batch"
GOTO MENU

:PNG
cd "../../../.batch"
start PNGConvertOUT.bat
cd "../Builders/Bubble-Builder/.batch"
GOTO MENU

:PACKVPK
cd .
start z-5RePackVPK-OUT.bat
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
cd "../Builders/Bubble-Builder/.batch"
GOTO MENU

:EOF
exit
