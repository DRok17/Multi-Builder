:MENU
@ECHO OFF
mode 50,12
set /p defa=< .\.batch\def-vita-path.txt
set /p appver=< .\.batch\appver.txt
set /p template=< .\contents\template.txt
Title SCUMMVM-BUILDER
ECHO                  SCUMMVM-BUILDER
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
IF EXIST .\contents\game_id.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\game_id.txt" | clip
    GOTO GAMEID
  ) ELSE (
    GOTO GAMEID
  )
:GAMEID
@set /p gid="Game ID (Refer to INI): "
@echo off
IF EXIST .\.batch\folder.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\.batch\folder.txt" | clip
    GOTO BUBPATH
  ) ELSE (
    GOTO BUBPATH
  )
:BUBPATH
@set /p path="Folder Name(ux0:data/scummvm/FOLDER): "
@echo off
@echo|set /p="%path%"> ".batch/folder.txt"
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%path%"> "contents/path.txt"
@echo|set /p="%gid%"> "contents/game_id.txt"
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
vita-pack-vpk -s contents/param.sfo -b contents/eboot.bin "%id%.vpk" -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/%template%.xml=sce_sys/livearea/contents/template.xml -a contents/path.txt=path.txt -a contents/game_id.txt=game_id.txt
GOTO CLNUP

:CLNUP
@echo off
move ".\*.vpk*" "..\..\VPK"
del "vita-pack-vpk.exe"
del "vita-mksfoex.exe"
del "*.png*"
exit
