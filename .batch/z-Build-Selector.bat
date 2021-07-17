:MENU
@ECHO OFF
mode 32,13
ECHO          DEFAULT BUILDER
ECHO.
ECHO ................................
ECHO.
ECHO    * Select Default Builder *
ECHO.
ECHO      1 - RetroBuilder
ECHO      2 - FAKE08-Builder
ECHO      3 - ScummVM-Builder
ECHO      4 - Bubble-Builder
ECHO      5 - Reset to Multi
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO RETRO
IF %M%==2 GOTO FAKE
IF %M%==3 GOTO SCUMM
IF %M%==4 GOTO BUBBLE
IF %M%==5 GOTO RESET


:RETRO
del ".\defbuild.txt"
(echo  RETRO) > ".\defbuild.txt"
GOTO EOF

:FAKE
del ".\defbuild.txt"
(echo  FAKE) > ".\defbuild.txt"
GOTO EOF

:SCUMM
del ".\defbuild.txt"
(echo  SCUMM) > ".\defbuild.txt"
GOTO EOF

:BUBBLE
del ".\defbuild.txt"
(echo  BUBBLE) > ".\defbuild.txt"
GOTO EOF

:RESET
del ".\defbuild.txt"
GOTO EOF

:EOF
exit
