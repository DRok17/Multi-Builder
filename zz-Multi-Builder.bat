@echo off

cd ".\.batch"

IF EXIST .\defbuild.txt (
    @echo off
    set /p BUILD=< .\defbuild.txt
    GOTO NEXT
  ) ELSE (
    GOTO MULTI
  )
:NEXT
GOTO %BUILD%

:RETRO
:: 12
del ".\app.txt"
(echo  RETROBUILDER) > ".\app.txt"
cd "../Builders/RetroBuilder"
start zz-RetroBuilder.bat
GOTO EOF

:FAKE
:: 14
del ".\app.txt"
(echo FAKE08-BUILDER) > ".\app.txt"
cd "../Builders/Fake08-Builder"
start zz-FAKE08-Builder.bat
GOTO EOF

:SCUMM
:: 15
del ".\app.txt"
(echo SCUMMVM-BUILDER) > ".\app.txt"
cd "../Builders/ScummVM-Builder"
start zz-ScummVM-Builder.bat
GOTO EOF

:BUBBLE
:: 14
del ".\app.txt"
(echo BUBBLE-BUILDER) > ".\app.txt"
cd "../Builders/Bubble-Builder"
start zz-Bubble-Builder.bat
GOTO EOF

:MULTI
start .Multi-Builder.bat

exit
