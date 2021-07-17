@ECHO OFF
mode 50,12
set /p appver=< .\appver.txt
Title RETROBUILDER %appver%
ECHO                    RETROBUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO            Image Conversion has started
ECHO.
ECHO                    Please wait
ECHO.
ECHO.
timeout 15 >nul
GOTO EOF
:EOF

exit
