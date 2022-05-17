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
copy "..\..\.batch\vita-mksfoex.exe" "."
copy ".\contents\eboot.bin" ".\build\"
copy ".\contents\template.xml" ".\build\sce_sys\livearea\contents\"
vita-mksfoex -s TITLE_ID=%id% "%title%" build/sce_sys/param.sfo
@echo off
IF EXIST ..\..\bg.png (
    GOTO ICO
  ) ELSE (
    GOTO ICO
  )
:ICO
@echo off
IF EXIST ..\..\icon0.png (
    GOTO SUP
  ) ELSE (
    GOTO FPNG
  )
:SUP
@echo off
IF NOT EXIST ..\..\startup.png (
    copy "..\..\.batch\startup.png" "."
    GOTO FPNG
  ) ELSE (
    GOTO FPNG
  )
:FPNG
@echo off
cd "./.batch"
start /min Robocopy-OUT.bat
timeout 3 >nul
cd ..
copy "..\..\icon0.png" ".\build\sce_sys\"
copy "..\..\bg.png" ".\build\sce_sys\livearea\contents\"
copy "..\..\startup.png" ".\build\sce_sys\livearea\contents\"
copy "..\Bubble-Builder\7z.exe" "."
copy "..\Bubble-Builder\7z.dll" "."

@echo off
echo %id% > build\titleid.txt
7z a -tzip "%id%.vpk" -r .\build\* .\build\eboot.bin
GOTO CLNUP


:CLNUP
@echo off
move ".\*.vpk*" "..\..\VPK"
del "*.exe*"
del "7z.dll"
del "*.png*"
rmdir /S /Q ".\build"
exit

