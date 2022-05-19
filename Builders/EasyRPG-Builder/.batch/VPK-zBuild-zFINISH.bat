@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
del "GameFilesDone.txt"
mode 50,12
set /p app=< .\app.txt
Title %app%
ECHO                   %app%
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO           VPK Conversion is now complete
ECHO.
ECHO.
ECHO.
ECHO.
timeout 4 >nul
del ".\VPK-Done.txt"
del ".\Asset-Prep.txt"
GOTO EOF
:EOF

exit
