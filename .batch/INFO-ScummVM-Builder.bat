@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 50,12
set /p appver=< .\appver.txt
Title SCUMMVM-BUILDER
ECHO                   SCUMMVM-BUILDER
ECHO                        %appver%
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO.              Tool to create ScummVM
ECHO.
ECHO             LiveArea Bubbles on PS VITA
ECHO.
ECHO.
timeout 10 >nul
GOTO EOF
:EOF

exit
