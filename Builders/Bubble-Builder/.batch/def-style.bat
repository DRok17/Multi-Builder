:MENU
@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 32,16
set /p stycur=< .\z-lastyle-cur.txt
set /p appver=< .\appver.txt
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
ECHO      Current Style : %stycur%
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO CENT
IF %M%==2 GOTO CENTUP
IF %M%==3 GOTO RIGH
IF %M%==4 GOTO RIGHUP
IF %M%==5 GOTO RIGHLOW

:EOF
exit

:CENT
@echo off
cd .
(echo a1) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
exit

:CENTUP
@echo off
cd .
(echo a2) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
exit

:RIGH
@echo off
cd .
(echo psmobile) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
exit

:RIGHUP
@echo off
cd .
(echo a5) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
exit

:RIGHLOW
@echo off
cd .
(echo vd) > z-lastyle-new.txt
set /p stynew=< .\z-lastyle-new.txt
cd .
start def-style-OUT.bat
timeout 3 >nul
@echo|set /p="%stynew%"> "./z-lastyle-cur.txt"
exit