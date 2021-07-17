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
ECHO         Image Conversion is now complete
ECHO.
ECHO.
ECHO.
ECHO.
timeout 4 >nul
GOTO EOF
:EOF

exit
