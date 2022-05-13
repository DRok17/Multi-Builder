:MENU
@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 32,18
set /p stycur=< .\z-lastyle-cur.txt
set /p stynow=< .\z-style-NOW.txt
set /p appver=< .\appver.txt
Title YOYO-BUILDER
ECHO           YOYO-BUILDER
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
exit

:NONE
@echo off
cd .
(echo template-nostartup) > ../contents/template.txt
(echo ad0) > z-style-NOW.txt
timeout 3 >nul
exit

:CENT
@echo off
cd .
(echo template) > ../contents/template.txt
(echo a1) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
exit

:CENTUP
@echo off
cd .
(echo template) > ../contents/template.txt
(echo a2) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
exit

:RIGH
@echo off
cd .
(echo template) > ../contents/template.txt
(echo psmobile) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
exit

:RIGHUP
@echo off
cd .
(echo template) > ../contents/template.txt
(echo a5) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
exit

:RIGHLOW
@echo off
cd .
(echo template) > ../contents/template.txt
(echo vd) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
@echo|set /p="%stynew%"> "./z-style-NOW.txt"
exit