:MENU
@ECHO OFF
mode 50,12
set /p defa=< .\.batch\def-vita-path.txt
set /p appver=< .\.batch\appver.txt
set /p template=< .\contents\template.txt
Title FAKE08-BUILDER
ECHO                  FAKE08-BUILDER
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
@echo off
IF EXIST .\.batch\folder.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\.batch\folder.txt" | clip
    GOTO FS
  ) ELSE (
    GOTO FS
  )

:FS
@echo off

md "..\..\input\f8-rom"

for %%i in (..\..\input\*.png*) do if not "%%i"=="..\..\input\bg.png" if not "%%i"=="..\..\input\icon0.png" if not "%%i"=="..\..\input\startup.png" if not "%%i"=="..\..\input\pic0.png" copy "%%i" "..\..\input\f8-rom"

IF EXIST ..\..\input\f8-rom\*.png (
    cd "..\..\builders\Fake08-Builder\"
  ) ELSE (
    rmdir /S /Q "..\..\input\f8-rom"
    GOTO BUBPATH
  )

@echo off

cd ".\.batch\"

wscript.exe "zinviz.vbs" "zzz-RomFileSplitter.bat"

cd ".."

GOTO TMOUT

:AUTOPATH
set /p path=< .\contents\file2.txt
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%path%"> "contents/path.txt"
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
vita-pack-vpk -s contents/param.sfo -b contents/eboot.bin "%id%.vpk" -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/%template%.xml=sce_sys/livearea/contents/template.xml -a contents/path.txt=args.txt
GOTO CLNUP

:BUBPATH
@set /p path="Cart/File Name(TEST.p8.png): "
@echo off
@echo|set /p="%path%"> ".batch/folder.txt"
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%path%"> "contents/path.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"
@echo off
copy "..\..\*.png*" "."
copy "..\..\.batch\vita-mksfoex.exe" "."
copy "..\..\.batch\vita-pack-vpk.exe" "."
@echo off
vita-mksfoex -s TITLE_ID=%id% "%title%" contents/param.sfo
vita-pack-vpk -s contents/param.sfo -b contents/eboot.bin "%id%.vpk" -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/%template%.xml=sce_sys/livearea/contents/template.xml -a contents/path.txt=args.txt
GOTO CLNUP

:CLNUP
@echo off
move ".\*.vpk*" "..\..\VPK"
del "vita-pack-vpk.exe"
del "vita-mksfoex.exe"
del "*.png*"
del ".\contents\file2.txt"
del "..\..\file2.txt"
exit

:TMOUT
@ECHO OFF
mode 50,12
set /p appver=< .\.batch\appver.txt
Title FAKE08-BUILDER
ECHO                  FAKE08-BUILDER
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
timeout 5 >nul
GOTO AUTOPATH
