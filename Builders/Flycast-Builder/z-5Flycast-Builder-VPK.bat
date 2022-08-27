:MENU
@ECHO OFF
mode 50,12
set /p defa=< .\.batch\def-vita-path.txt
set /p appver=< .\.batch\appver.txt
set /p template=< .\contents\template.txt
Title FLYCAST-BUILDER
ECHO                  FLYCAST-BUILDER
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
@set /p id="Title ID (9 characters [CAPS or #]): "
GOTO CHKROM
:CHKROM
@echo off

cd ".\.batch\"

wscript.exe "zinviz.vbs" "zzz-RomFileSplitter.bat"

timeout 3 >nul

cd ".."
:CDI
@ECHO OFF
findstr /I /R [a-z]*\.cdi  .\contents\file2.txt>NUL
IF ERRORLEVEL 1 (GOTO CHD) ELSE (GOTO CONT)
GOTO :EOF
:CHD
@ECHO OFF
findstr /I /R [a-z]*\.chd  .\contents\file2.txt>NUL
IF ERRORLEVEL 1 (GOTO GDI) ELSE (GOTO CONT)
GOTO :EOF
:GDI
@ECHO OFF
findstr /I /R [a-z]*\.gdi  .\contents\file2.txt>NUL
IF ERRORLEVEL 1 (GOTO ROMNAME) ELSE (GOTO GDIFOLD)
GOTO :EOF
:GDIFOLD
@echo off
IF EXIST .\contents\folder.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\folder.txt" | clip
    GOTO FOLD
  ) ELSE (
    GOTO FOLD
  )
:FOLD
@set /p gdifold="GDI Folder Name: "
@echo off
set /p romp=< .\contents\file2.txt
@echo|set /p="%gdifold%"> "contents/folder.txt"
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%gdifold%/%romp%"> "contents/rom.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"
GOTO FPNG
:ROMNAME
@echo off
IF EXIST .\contents\rom-name.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\rom-name.txt" | clip
    GOTO MANROM
  ) ELSE (
    GOTO MANROM
  )
:MANROM
@set /p romp="Rom Name (with Extension): "
@echo off
@echo|set /p="%romp%"> "contents/rom-name.txt"
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%romp%"> "contents/rom.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"
@ECHO OFF
findstr /I /R [a-z]*\.gdi  .\contents\rom-name.txt>NUL
IF ERRORLEVEL 1 (GOTO FPNG) ELSE (GOTO GDIFOLD2)
GOTO :EOF
:GDIFOLD2
@echo off
IF EXIST .\contents\folder.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\folder.txt" | clip
    GOTO FOLD2
  ) ELSE (
    GOTO FOLD2
  )
:FOLD2
@set /p gdifold="GDI Folder Name: "
@echo off
@echo|set /p="%gdifold%"> "contents/folder.txt"
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%gdifold%/%romp%"> "contents/rom.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"
GOTO FPNG
:CONT
@echo off
set /p romp=< .\contents\file2.txt
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%romp%"> "contents/rom.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"
@echo off
IF NOT EXIST ..\..\startup.png (
    copy "..\..\.batch\startup.png" "."
    GOTO FPNG
  ) ELSE (
    GOTO FPNG
  )
:FPNG
@echo off
copy "..\..\*.png*" "."
copy "..\..\.batch\vita-mksfoex.exe" "."
copy "..\..\.batch\vita-pack-vpk.exe" "."
@echo off
vita-mksfoex -s TITLE_ID=%id% "%title%" contents/param.sfo
vita-pack-vpk -s contents/param.sfo -b contents/eboot.bin "%id%.vpk" -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/%template%.xml=sce_sys/livearea/contents/template.xml -a contents/rom.txt=args.txt
GOTO CLNUP

:CLNUP
@echo off
move ".\*.vpk*" "..\..\VPK"
del "vita-pack-vpk.exe"
del "vita-mksfoex.exe"
del "*.png*"
exit
