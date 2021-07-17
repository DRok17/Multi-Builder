@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 50,12
set /p appver=< .\appver.txt
Title RETROBUILDER
ECHO                    RETROBUILDER
ECHO                      %appver%
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO      Tool to create RetroArch and Daedalusx64
ECHO.
ECHO             LiveArea Bubbles on PS VITA
ECHO.
ECHO.
timeout 10 >nul
GOTO EOF
:EOF

exit
