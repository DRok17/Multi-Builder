:MENU
@ECHO OFF
mode 55,20
set /p appver=< .\appver.txt
Title MULTI-BUILDER
ECHO                      MULTI-BUILDER
ECHO.                         
ECHO .......................................................
ECHO.
ECHO         * Builders *             * Image Tools *
ECHO.
ECHO     1 - RetroBuilder         11 - Input Folder
ECHO     2 - FAKE-08-Builder      22 - Image Converter
ECHO     3 - ScummVM-Builder      33 - Converted Images
ECHO     4 - Homebrew and Adrenl. 44 - Wipe Input/CFG
ECHO     5 - YoYo-Builder           
ECHO     6 - EasyRPG-Builder                     
ECHO.
ECHO.
ECHO                * Settings and Folders *
ECHO.
ECHO                  B - Default Builder
ECHO                  V - VPK Folder
ECHO.
SET /P M=Type Number then ENTER or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO RETRO
IF %M%==2 GOTO FAKE
IF %M%==3 GOTO SCUMM
IF %M%==4 GOTO BUBBLE
IF %M%==5 GOTO YOYO
IF %M%==6 GOTO EASY
IF %M%==11 GOTO INPF
IF %M%==22 GOTO PNG
IF %M%==33 GOTO IMG
IF %M%==44 GOTO WIPE
IF %M%==v GOTO VPKF
IF %M%==V GOTO VPKF
IF %M%==b GOTO BUILD
IF %M%==B GOTO BUILD
IF %M%==r GOTO RESTART

:RESTART
GOTO MENU

:IMG
cd .
start OpenIMGFolderOUT.bat
GOTO MENU

:PNG
del ".\app.txt"
(echo MULTI-BUILDER) > ".\app.txt"
cd .
start PNGConvertOUT.bat
GOTO MENU

:BUILD
cd .
start z-Build-Selector.bat
GOTO MENU

:VPKF
cd .
start OpenVPKFolderOUT.bat
GOTO MENU

:INPF
cd .
start OpenInputFolderOUT.bat
GOTO MENU

:RETRO
:: 12
:: 25
del ".\app.txt"
(echo  RETROBUILDER) > ".\app.txt"
cd "../Builders/RetroBuilder"
start zz-RetroBuilder.bat
GOTO EOF

:FAKE
:: 14
:: 24
del ".\app.txt"
(echo FAKE08-BUILDER) > ".\app.txt"
cd "../Builders/Fake08-Builder"
start zz-FAKE08-Builder.bat
GOTO EOF

:SCUMM
:: 15
:: 24
del ".\app.txt"
(echo SCUMMVM-BUILDER) > ".\app.txt"
cd "../Builders/ScummVM-Builder"
start zz-ScummVM-Builder.bat
GOTO EOF

:BUBBLE
:: 14
:: 24
del ".\app.txt"
(echo BUBBLE-BUILDER) > ".\app.txt"
cd "../Builders/Bubble-Builder"
start zz-Bubble-Builder.bat
GOTO EOF

:YOYO
:: 12
:: 25
del ".\app.txt"
(echo YOYO-BUILDER) > ".\app.txt"
cd "../Builders/YOYO-Builder"
start zz-YoYo-Builder.bat
GOTO EOF

:EASY
:: 15
:: 24
del ".\app.txt"
(echo EASYRPG-BUILDER) > ".\app.txt"
cd "../Builders/EasyRPG-Builder"
start zz-EasyRPG-Builder.bat
GOTO EOF

:WIPE
cd .
start /min zzz-Wipe.bat
GOTO MENU

:EOF
exit
