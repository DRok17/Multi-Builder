@ECHO OFF
mode 50,12
set /p appver=< .\appver.txt
Title BUBBLE-BUILDER
ECHO                  BUBBLE-BUILDER
ECHO                      %appver%
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO              VPK Conversion has started
ECHO.
ECHO                    Please wait
ECHO.
ECHO.
timeout 5 >nul
GOTO EOF
:EOF

exit
