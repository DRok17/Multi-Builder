@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 50,12
set /p appver=< .\appver.txt
set /p appdate=< .\appdate.txt
Title FAKE08-BUILDER
ECHO                   FAKE08-BUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO               Tool to create FAKE-08
ECHO.
ECHO    LiveArea Bubbles on PS VITA for Pico 8 Games
ECHO.
ECHO.
ECHO.
ECHO.    Version: %appver%       Build Date: %appdate%
timeout 10 >nul
GOTO EOF
:EOF

exit
