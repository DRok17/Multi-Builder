:MENU
@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 32,18
dir ..\..\..\input\app-folder /a:d /b > list.txt
set /p stycur=< .\z-lastyle-cur.txt
set /p stynow=< .\z-style-NOW.txt
set /p id=< .\list.txt
:: Replaces Template.xml if deleted
IF NOT EXIST "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml" (
    ren template-a1.xml template.xml
    copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    ren template.xml template-a1.xml
    (echo a1) > z-lastyle-cur.txt
    (echo a1) > z-style-NOW.txt
    set /p stynow=< .\z-style-NOW.txt
    GOTO START
  ) ELSE (
    GOTO START
  )
:START
Title BUBBLE-BUILDER
ECHO           BUBBLE-BUILDER
ECHO.
ECHO ................................
ECHO.
ECHO     * LiveArea Style Editor *
ECHO.
ECHO      1 - a1 (Center)
ECHO      2 - a2 (Center-Upper)
ECHO.
ECHO      3 - psmobile (Right)
ECHO      4 - a5 (Right-Upper)
ECHO      5 - vd (Right-Lower)
ECHO.
ECHO      6 - ad0 (None)
ECHO.
ECHO      Current Style : %stynow%
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO CENT
IF %M%==2 GOTO CENTUP
IF %M%==3 GOTO RIGH
IF %M%==4 GOTO RIGHUP
IF %M%==5 GOTO RIGHLOW
IF %M%==6 GOTO NONE

:EOF
@echo off
del ".\list.txt"
exit

:NONE
@echo off
cd .
copy "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml" "."
ren template.xml template-old.xml
copy "..\..\..\.batch\template-nostartup.xml" "."
ren template-nostartup.xml template.xml
copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
(echo ad0) > z-style-NOW.txt
timeout 2 >nul
del ".\template.xml"
del ".\list.txt"
GOTO MENU

:CENT
@echo off
cd .
IF EXIST .\template-old.xml (
    ren template-old.xml template.xml
    del "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml"
    copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    GOTO NEXTCENT
  ) ELSE (
    GOTO NEXTCENT
  )
:NEXTCENT
(echo a1) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo off
copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
del ".\template.xml"
del ".\list.txt"
GOTO MENU

:CENTUP
@echo off
cd .
IF EXIST .\template-old.xml (
    ren template-old.xml template.xml
    del "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml"
    copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    GOTO NEXTCENTUP
  ) ELSE (
    GOTO NEXTCENTUP
  )
:NEXTCENTUP
(echo a2) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo off
copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
del ".\template.xml"
del ".\list.txt"
GOTO MENU

:RIGH
@echo off
cd .
IF EXIST .\template-old.xml (
    ren template-old.xml template.xml
    del "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml"
    copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    GOTO NEXTRIGH
  ) ELSE (
    GOTO NEXTRIGH
  )
:NEXTRIGH
(echo psmobile) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo off
copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
del ".\template.xml"
del ".\list.txt"
GOTO MENU

:RIGHUP
@echo off
cd .
IF EXIST .\template-old.xml (
    ren template-old.xml template.xml
    del "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml"
    copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    GOTO NEXTRIGHUP
  ) ELSE (
    GOTO NEXTRIGHUP
  )
:NEXTRIGHUP
(echo a5) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo off
copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
del ".\template.xml"
del ".\list.txt"
GOTO MENU

:RIGHLOW
@echo off
cd .
IF EXIST .\template-old.xml (
    ren template-old.xml template.xml
    del "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml"
    copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    GOTO NEXTRIGHLOW
  ) ELSE (
    GOTO NEXTRIGHLOW
  )
:NEXTRIGHLOW
(echo vd) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo off
copy ".\template.xml" "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
del ".\template.xml"
del ".\list.txt"
GOTO MENU