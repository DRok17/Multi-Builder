@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 50,12
set /p app=< .\app.txt
Title %app%
ECHO                   %app%
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
