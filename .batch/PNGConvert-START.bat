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
ECHO            Image Conversion has started
ECHO.
ECHO                    Please wait
ECHO.
ECHO.
timeout 15 >nul
GOTO EOF
:EOF

exit
