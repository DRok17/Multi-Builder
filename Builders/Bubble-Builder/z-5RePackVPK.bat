@echo off
dir ..\..\input\app-folder /a:d /b > list.txt
set /p id=< .\list.txt
set /p sfo=< .\IDer\txt\id.txt
copy "..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml" "."
del "..\..\input\app-folder\%id%\sce_sys\livearea\contents\*.xml"
@echo off
copy "..\..\*.png*" "."
@echo off
IF EXIST ..\..\input\app-folder\%id%\sce_sys\livearea\contents\bg.png (
    ren bg0.png bg.png
    copy "bg.png" "..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    cd .\.batch
    start /min template-bg-OUT.bat
    cd ..
  ) ELSE (
    GOTO NEXT1
  )
:NEXT1
IF EXIST ..\..\input\app-folder\%id%\sce_sys\livearea\contents\bg0.png (
    ren bg.png bg0.png
    copy "bg0.png" "..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
    cd .\.batch
    start /min template-bg0-OUT.bat
    cd ..
  ) ELSE (
    GOTO NEXT2
  )
:NEXT2
IF EXIST ..\..\input\app-folder\%id%\sce_sys\livearea\contents\default_gate.png (
    GOTO GATE
  ) ELSE (
    GOTO NEXT3
  )
:GATE
@ECHO OFF
mode 50,12
set /p appver=< .\.batch\appver.txt
Title BUBBLE-BUILDER
ECHO                   BUBBLE-BUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO                    PLEASE WAIT
ECHO.
ECHO.
ECHO.
ECHO.
timeout 3 >nul
@echo off
IF EXIST ..\..\input\app-folder\%id%\sce_sys\livearea\contents\default_gate.png (
    ren "..\..\input\app-folder\%id%\sce_sys\livearea\contents\default_gate.png" "startup.png"
    cd .\.batch
    start /min template-gate-OUT.bat
    cd ..
  ) ELSE (
    GOTO NEXT3
  )
:NEXT3
IF EXIST .\param.sfo (
    copy "param.sfo" "..\..\input\app-folder\%id%\sce_sys\"
  ) ELSE (
    GOTO NEXT4
  )
:NEXT4
copy "bg.png" "..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
copy "bg0.png" "..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
copy "startup.png" "..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
copy "icon0.png" "..\..\input\app-folder\%id%\sce_sys\"
copy "pic0.png" "..\..\input\app-folder\%id%\sce_sys\"
copy "boot.png" "..\..\input\app-folder\%id%\data\"
rmdir /S /Q "..\..\input\app-folder\%id%\sce_sys\package"
@ECHO OFF
mode 50,12
set /p appver=< .\.batch\appver.txt
Title BUBBLE-BUILDER
ECHO                   BUBBLE-BUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO                    PLEASE WAIT
ECHO.
ECHO.
ECHO.
ECHO.
timeout 3 >nul
GOTO ZIP
:ZIP

copy "template.xml" "..\..\input\app-folder\%id%\sce_sys\livearea\contents\"
@echo off
IF EXIST .\param.sfo (
    7z.exe a ..\..\vpk\"%sfo%".zip "..\..\input\app-folder\%id%\*"
  ) ELSE (
    7z.exe a ..\..\vpk\"%id%".zip "..\..\input\app-folder\%id%\*"
    GOTO CLNUP
  )
:CLNUP
@echo off
ren "..\..\vpk\*.zip" "*.vpk"
ren bg0.png bg.png
del "*.png*"
del .\list.txt
del .\template.xml
exit
