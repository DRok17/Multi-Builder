:MENU
@ECHO OFF
mode 32,21
set /p appver=< .\appver.txt
Title RETROBUILDER
ECHO           RETROBUILDER
ECHO.
ECHO ................................
ECHO.
ECHO   * Simple VPK Creation Tools *
ECHO.
ECHO      1 - Input Folder
ECHO      2 - Simple VPK
ECHO      3 - Package/Archive
ECHO      4 - Wipe Input/Contents
ECHO.
ECHO    * Settings and Folders *
ECHO.
ECHO      R - Set Rom Folder
ECHO      D - Default Cores Viewer
ECHO      L - LiveArea Style
ECHO      V - VPK Folder
ECHO.
ECHO      A - Advanced Options
ECHO.
SET /P M=Type #, M or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF
IF %M%==2 GOTO EVPK
IF %M%==3 GOTO PKG
IF %M%==4 GOTO WIPE
IF %M%==5 GOTO PNG
IF %M%==6 GOTO PRES
IF %M%==7 GOTO MVPK
IF %M%==8 GOTO AVPK
IF %M%==r GOTO DEFA
IF %M%==d GOTO CORV
IF %M%==c GOTO CONT
IF %M%==v GOTO VPKF
IF %M%==x GOTO EXTR
IF %M%==R GOTO DEFA
IF %M%==D GOTO CORV
IF %M%==C GOTO CONT
IF %M%==v GOTO VPKF
IF %M%==a GOTO ADOP
IF %M%==A GOTO ADOP
IF %M%==11 GOTO GAMESF
IF %M%==22 GOTO CORESF
IF %M%==33 GOTO STRTUPF
IF %M%==44 GOTO MAINF
IF %M%==00 GOTO SAMP
IF %M%==M GOTO MULTI
IF %M%==m GOTO MULTI
IF %M%==l GOTO DEFSTY
IF %M%==L GOTO DEFSTY
IF %M%==i GOTO INFO
IF %M%==I GOTO INFO
IF %M%==r GOTO RESTART

:RESTART
GOTO MENU

:INPF
cd "../../../../.batch"
start OpenInputFolderOUT.bat
cd "../Builders/RetroBuilder/contents/1batch"
GOTO MENU


:INFO
cd .
start INFO-RETROBUILDER.bat
GOTO MENU


:DEFSTY
cd .
start def-style.bat
GOTO MENU

:MULTI
cd "../../../../.batch"
start .Multi-Builder.bat
GOTO EOF


GOTO MENU
:ADOP
@ECHO OFF
mode 68,20
set /p appver=< .\appver.txt
Title RETROBUILDER 
ECHO                             RETROBUILDER
ECHO.
ECHO ....................................................................
ECHO.
ECHO   * Simple VPK Creation Tools *     * Custom Input and VPK Create *
ECHO.
ECHO      1 - Input Folder                  5 - Image Converter
ECHO      2 - Simple VPK                    6 - Select Startup PNG
ECHO      3 - Package/Archive               7 - Re-title/ID VPK
ECHO      4 - Wipe Input/Contents           8 - Re-make Archive VPK
ECHO.
ECHO    * Settings and Folders *               * Asset Folders *
ECHO.
ECHO      R - Set Rom Folder               11 - Games Archive Folders
ECHO      D - Default Cores Viewer         22 - Cores Folders
ECHO      C - Contents Folder              33 - Startup PNG Folders
ECHO      V - VPK Folder                   44 - Main RB Folder
ECHO.
ECHO.
SET /P M=Type # then ENTER, S for SIMPLE, M for MULTI or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF2
IF %M%==2 GOTO EVPK2
IF %M%==3 GOTO PKG2
IF %M%==4 GOTO WIPE2
IF %M%==5 GOTO PNG
IF %M%==6 GOTO PRES
IF %M%==7 GOTO MVPK
IF %M%==8 GOTO AVPK
IF %M%==r GOTO DEFA2
IF %M%==R GOTO DEFA2
IF %M%==d GOTO CORV2
IF %M%==D GOTO CORV2
IF %M%==c GOTO CONT2
IF %M%==C GOTO CONT2
IF %M%==v GOTO VPKF2
IF %M%==V GOTO VPKF2
IF %M%==11 GOTO GAMESF
IF %M%==22 GOTO CORESF
IF %M%==33 GOTO STRTUPF
IF %M%==44 GOTO MAINF
IF %M%==s GOTO MENU
IF %M%==S GOTO MENU
IF %M%==00 GOTO SAMP2
IF %M%==M GOTO MULTI
IF %M%==m GOTO MULTI
IF %M%==i GOTO INFO2
IF %M%==I GOTO INFO2
IF %M%==r GOTO RESTART2

:RESTART2
GOTO ADOP

:INFO2
cd .
start INFO-RETROBUILDER.bat
GOTO ADOP

:MULTI
cd "../../../../"
start zz-Multi-Builder.bat
GOTO EOF

:CORV
@ECHO OFF
mode 68,20
set /p gbc=< ..\1resources\cores\GB\core.txt
set /p gbac=< ..\1resources\cores\gba\core.txt
set /p genc=< ..\1resources\cores\gen\core.txt
set /p ggc=< ..\1resources\cores\gg\core.txt
set /p nesc=< ..\1resources\cores\nes\core.txt
set /p snesc=< ..\1resources\cores\snes\core.txt
set /p cuco=< ..\core.txt
set /p curo=< ..\rom.txt
ECHO                         DEFAULT CORES VIEWER
ECHO.
ECHO ....................................................................
ECHO.
ECHO      1 - Game Boy          %gbc%
ECHO.
ECHO      2 - GBA               %gbac%
ECHO.
ECHO      3 - Genesis           %genc%
ECHO.
ECHO      4 - Game Gear         %ggc%
ECHO.
ECHO      5 - NES               %nesc%
ECHO.
ECHO      6 - SNES              %snesc%
ECHO.
ECHO  Current Core: %cuco%
ECHO. Current Game: %curo%
ECHO.
SET /P M=Type Number then ENTER or 0 for MENU :
IF %M%==0 GOTO MENU
IF %M%==1 GOTO GBF
IF %M%==2 GOTO GBAF
IF %M%==3 GOTO GENF
IF %M%==4 GOTO GGF
IF %M%==5 GOTO NESF
IF %M%==6 GOTO SNESF
IF %M%==r GOTO RESTART3

:RESTART3
GOTO CORV


:CORV2
@ECHO OFF
mode 68,20
set /p gbc=< ..\1resources\cores\GB\core.txt
set /p gbac=< ..\1resources\cores\gba\core.txt
set /p genc=< ..\1resources\cores\gen\core.txt
set /p ggc=< ..\1resources\cores\gg\core.txt
set /p nesc=< ..\1resources\cores\nes\core.txt
set /p snesc=< ..\1resources\cores\snes\core.txt
set /p cuco=< ..\core.txt
set /p curo=< ..\rom.txt
ECHO                        DEFAULT CORES VIEWER
ECHO.
ECHO ....................................................................
ECHO.
ECHO      1 - Game Boy          %gbc%
ECHO.
ECHO      2 - GBA               %gbac%
ECHO.
ECHO      3 - Genesis           %genc%
ECHO.
ECHO      4 - Game Gear         %ggc%
ECHO.
ECHO      5 - NES               %nesc%
ECHO.
ECHO      6 - SNES              %snesc%
ECHO.
ECHO  Current Core: %cuco%
ECHO. Current Game: %curo%
ECHO.
SET /P M=Type Number then ENTER or 0 for MENU :
IF %M%==0 GOTO ADOP
IF %M%==1 GOTO GBF2
IF %M%==2 GOTO GBAF2
IF %M%==3 GOTO GENF2
IF %M%==4 GOTO GGF2
IF %M%==5 GOTO NESF2
IF %M%==6 GOTO SNESF2
IF %M%==r GOTO RESTART4

:RESTART4
GOTO CORV2

GOTO ADOP

:PRES
@ECHO OFF
mode 50,12
ECHO                SELECT STARTUP PNG
ECHO.
ECHO ..................................................
ECHO.
ECHO       1 - GB                     4 - GG
ECHO.
ECHO       2 - GBA                    5 - NES
ECHO.
ECHO       3 - GEN                    6 - SNES
ECHO.
ECHO.
SET /P M=Type Number then ENTER or 0 for MENU :
IF %M%==0 GOTO ADOP
IF %M%==1 GOTO STUPGB
IF %M%==2 GOTO STUPGBA
IF %M%==3 GOTO STUPGEN
IF %M%==4 GOTO STUPGG
IF %M%==5 GOTO STUPNES
IF %M%==6 GOTO STUPSNES

:MULTI
cd "../../.."
start zz-Multi-Builder
GOTO EOF

GOTO ADOP

:MAINF
cd .
start OpenMAINFolderOUT.bat
GOTO ADOP

:STRTUPF
cd .
start OpenSTARTUPFolderOUT.bat
GOTO ADOP

:CORESF
cd .
start OpenCORESFolderOUT.bat
GOTO ADOP

:GAMESF
cd .
start OpenGAMEFolderOUT.bat
GOTO ADOP

:EVPK
cd .
start EasyVPK-OUT.bat
GOTO MENU

:EVPK2
cd .
start EasyVPK-OUT.bat
GOTO ADOP

:GBF2
cd .
start OpenCORE-GB-FolderOUT.bat
GOTO CORV2

:GBAF2
cd .
start OpenCORE-GBA-FolderOUT.bat
GOTO CORV2

:GGF2
cd .
start OpenCORE-GG-FolderOUT.bat
GOTO CORV2

:GENF2
cd .
start OpenCORE-GEN-FolderOUT.bat
GOTO CORV2

:NESF2
cd .
start OpenCORE-NES-FolderOUT.bat
GOTO CORV2

:SNESF2
cd .
start OpenCORE-SNES-FolderOUT.bat
GOTO CORV2


:GBF
cd .
start OpenCORE-GB-FolderOUT.bat
GOTO CORV

:GBAF
cd .
start OpenCORE-GBA-FolderOUT.bat
GOTO CORV

:GGF
cd .
start OpenCORE-GG-FolderOUT.bat
GOTO CORV

:GENF
cd .
start OpenCORE-GEN-FolderOUT.bat
GOTO CORV

:NESF
cd .
start OpenCORE-NES-FolderOUT.bat
GOTO CORV

:SNESF
cd .
start OpenCORE-SNES-FolderOUT.bat
GOTO CORV

:STUPSNES
cd .
start zzz-StartupInput-SNES.bat
GOTO ADOP

:STUPNES
cd .
start zzz-StartupInput-NES.bat
GOTO ADOP

:STUPGEN
cd .
start zzz-StartupInput-GEN.bat
GOTO ADOP


:STUPGG
cd .
start zzz-StartupInput-GG.bat
GOTO ADOP


:STUPGBA
cd .
start zzz-StartupInput-GBA.bat
GOTO ADOP


:STUPGB
cd .
start zzz-StartupInput-GB.bat
GOTO ADOP

:INPF2
cd "../../../../.batch"
start OpenInputFolderOUT.bat
cd "../Builders/RetroBuilder/contents/1batch"
GOTO ADOP

:APPVNID
cd .
start AutoPNG-Path-VPK-NID-OUT.bat
GOTO MENU

:APPVNID2
cd .
start AutoPNG-Path-VPK-NID-OUT.bat
GOTO ADOP

:DEFA
cd .
start default-rom-path.bat
GOTO MENU

:DEFA2
cd .
start default-rom-path.bat
GOTO ADOP

:AUPT
cd .
start build-autopath-SC.bat
GOTO ADOP

:PTNI
cd .
start build-autopath-nameid-SC.bat
GOTO ADOP

:LVPK
cd .
start build-SC.bat
GOTO ADOP

:PKG
cd .
start PKG-SC.bat
GOTO MENU

:PKG2
cd .
start PKG-SC.bat
GOTO ADOP

:CORT
cd .
start z-2core.txt-SC-OUT.bat
GOTO ADOP

:ROMT
cd .
start z-1rom.txt-SC-OUT.bat
GOTO ADOP

:CONT
cd .
start OpenCONTFolderOUT.bat
GOTO MENU

:CONT2
cd .
start OpenCONTFolderOUT.bat
GOTO ADOP

:APNGVPK
cd .
start AutoPNG-VPK-OUT.bat
GOTO ADOP

:APNGPT
cd .
start AutoPNGAutoPath-OUT.bat
GOTO ADOP

:PNG
cd "../../../../.batch"
start PNGConvertOUT.bat
cd "../Builders/RetroBuilder/contents/1batch"
GOTO ADOP

:MVPK
cd .
start build-nameid-SC.bat
GOTO ADOP

:AVPK
cd .
start build-auto-SC.bat
GOTO ADOP

:VPKF
cd .
start OpenVPKFolderOUT.bat
GOTO MENU

:VPKF2
cd .
start OpenVPKFolderOUT.bat
GOTO ADOP

:WIPEDEV
cd .
start zzz-Wipe-DEV.bat
GOTO MENU

:WIPEDEV2
cd .
start zzz-Wipe-DEV.bat
GOTO ADOP

:WIPE
cd .
start zzz-Wipe.bat
cd "../../../../.batch"
start zzz-Wipe.bat
cd "../Builders/RetroBuilder/contents/1batch"
GOTO MENU

:WIPE2
cd .
start zzz-Wipe.bat
cd "../../../../.batch"
start zzz-Wipe.bat
cd "../Builders/RetroBuilder/contents/1batch"
GOTO ADOP

:SAMP
cd .
start zzz-Sample.bat
GOTO MENU

:SAMP2
cd .
start zzz-Sample.bat
GOTO ADOP


:EOF
exit
