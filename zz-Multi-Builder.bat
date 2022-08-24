@echo off

cd "."

IF EXIST .\.batch\z-hidden.txt (
    GOTO NEXT5
  ) ELSE (
    for %%i in (.\*.bat) do if not "%%i"==".\zz-Multi-Builder.bat" attrib +h +s *.bat
    for %%i in (.\*.exe) do if not "%%i"==".\zz-Multi-Builder.bat" attrib +h +s *.exe
    for %%i in (.\*.md) do if not "%%i"==".\zz-Multi-Builder.bat" attrib +h +s *.md
    attrib +h .batch
    GOTO NEXT1
  )
:NEXT1

@echo off
(echo HIDDEN) > ".\.batch\z-hidden.txt"
IF EXIST LICENSE (
    attrib +h +s LICENSE
    GOTO NEXT2
  ) ELSE (
    exit
  )
:NEXT2

@echo off
IF EXIST zz-Multi-Builder.bat (
    attrib -h -s zz-Multi-Builder.bat
    GOTO NEXT5
  ) ELSE (
    exit
  )
:NEXT5

IF EXIST .\.batch\z-deleteme.txt (
    del .\input\deleteme.txt
    del .\input\app-folder\deleteme.txt
    del .\vpk\deleteme.txt
    del .\vpk\.trash\deleteme.txt
    del .\.batch\z-deleteme.txt
    GOTO NEXT6
  ) ELSE (
    GOTO NEXT6
  )
:NEXT6

cd ".\.batch"

IF EXIST .\defbuild.txt (
    @echo off
    set /p BUILD=< .\defbuild.txt
    GOTO NEXT2
  ) ELSE (
    GOTO MULTI
  )
:NEXT2
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

:YOYO
:: 14
del ".\app.txt"
(echo YOYO-BUILDER) > ".\app.txt"
cd "../Builders/YOYO-Builder"
start zz-YoYo-Builder.bat
GOTO EOF

:EASY
:: 14
del ".\app.txt"
(echo EASYRPG-BUILDER) > ".\app.txt"
cd "../Builders/EASYRPG-Builder"
start zz-EasyRPG-Builder.bat
GOTO EOF

:FLY
:: 14
del ".\app.txt"
(echo FLYCAST-BUILDER) > ".\app.txt"
cd "../Builders/Flycast-Builder"
start zz-Flycast-Builder.bat
GOTO EOF

:MULTI
start .Multi-Builder.bat

exit
