@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 50,13
set /p app=< .\app.txt
Title %app%
ECHO                    %app%
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO            Eboot Update has been started
ECHO.
ECHO                    Please wait
ECHO.
ECHO.
ECHO.
timeout 4 >nul
GOTO NEXT
:NEXT
@ECHO OFF
:: WIDTH minus app.txt divided by 2 plus 6
mode 50,13
set /p app=< .\app.txt
Title %app%
ECHO                    %app%
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO            Eboot Update is now complete
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
timeout 3 >nul
GOTO EOF
:EOF
exit
