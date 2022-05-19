:MENU
@ECHO OFF
md ".\build"
md ".\build\sce_sys"
md ".\build\sce_sys\livearea"
md ".\build\sce_sys\livearea\contents"
mode 50,12
set /p app=< .\.batch\app.txt
set /p template=< .\contents\template.txt
Title EASYRPG-BUILDER
ECHO                  EASYRPG-BUILDER
ECHO.
ECHO ..................................................
ECHO.
@echo off
IF EXIST .\contents\bub-name.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\bub-name.txt" | clip
    GOTO BUBNAME
  ) ELSE (
    GOTO BUBNAME
  )
:BUBNAME
@set /p title="Bubble Name: "
@echo off
IF EXIST .\contents\bub-id.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\bub-id.txt" | clip
    GOTO BUBID
  ) ELSE (
    GOTO BUBID
  )
:BUBID
@set /p id="Title ID (9 char [CAPS or #]): "
@echo off
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"
cd ./.batch
start /min VPK-Prep-IN.bat
exit

