:MENU
@ECHO OFF
mode 50,12
set /p defa=< .\.batch\def-vita-path.txt
set /p appver=< .\.batch\appver.txt
Title YOYO-BUILDER
ECHO                  YOYO-BUILDER
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
@echo off
copy "..\..\*.png*" "."
copy "..\..\input\*.apk*" "."
@echo off
IF EXIST ..\..\input\yyl.cfg (
    copy "..\..\input\*.cfg*" "."
    GOTO CONT
  ) ELSE (
    GOTO CONT
  )
:CONT
@echo off
copy "..\..\.batch\vita-mksfoex.exe" "."
copy "..\..\.batch\vita-pack-vpk.exe" "."
ren *.apk* game.apk
cd "./.batch/config"
(echo *REQUIRED*) > wipe.txt
cd "../.."
@echo off
IF EXIST .\eboot.bin (
    GOTO KEYSCHK
  ) ELSE (
    GOTO EBOOTSEL
  )
:EBOOTSEL
@ECHO OFF
mode 33,10
set /p appver=< .\txt\appver.txt
Title YO YO BUILDER %appver%
ECHO        YO YO BUILDER %appver%
ECHO.
ECHO .................................
ECHO.
ECHO        * Eboot Selector *
ECHO.
ECHO      1 - Standalone.bin
ECHO      2 - Standalone_video.bin
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO STANDARD
IF %M%==2 GOTO VIDEO
:STANDARD
@echo off
IF EXIST .\eboots\standalone.bin (
    copy ".\eboots\standalone.bin" "."
    ren standalone.bin eboot.bin
    GOTO KEYSCHK
  ) ELSE (
    GOTO EOF
  )
:VIDEO
@echo off
IF EXIST .\eboots\standalone_video.bin (
    copy ".\eboots\standalone_video.bin" "."
    ren standalone_video.bin eboot.bin
    GOTO KEYSCHK
  ) ELSE (
    GOTO EOF
  )
@echo off
:KEYSCHK
@echo off
IF EXIST ..\..\input\*.ini* (
    copy "..\..\input\*.ini*" "."
    ren *.ini* keys.ini
    GOTO KEYCFGCHK
  ) ELSE (
    GOTO CFGCHK
  )
:CFGCHK
IF EXIST .\yyl.cfg (
    GOTO BUILDCFG
  ) ELSE (
    GOTO BUILD
  )
:KEYCFGCHK
IF EXIST .\yyl.cfg (
    GOTO BUILDKEYSCFG
  ) ELSE (
    GOTO BUILDKEYS
  )
:KEYSCFG
IF EXIST .\keys.ini (
    GOTO BUILDKEYSCFG
  ) ELSE (
    GOTO BUILDCFG
  )
:BUILD
vita-mksfoex -d ATTRIBUTE2=12 -s TITLE_ID=%id% "%title%" param.sfo
vita-pack-vpk -s param.sfo -b eboot.bin "%id%.vpk" -a game.apk=game.apk -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/template.xml=sce_sys/livearea/contents/template.xml
GOTO CLNUP
:BUILDCFG
vita-mksfoex -d ATTRIBUTE2=12 -s TITLE_ID=%id% "%title%" param.sfo
vita-pack-vpk -s param.sfo -b eboot.bin "%id%.vpk" -a game.apk=game.apk -a yyl.cfg=yyl.cfg -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/template.xml=sce_sys/livearea/contents/template.xml
GOTO CLNUP
:BUILDKEYS
vita-mksfoex -d ATTRIBUTE2=12 -s TITLE_ID=%id% "%title%" param.sfo
vita-pack-vpk -s param.sfo -b eboot.bin "%id%.vpk" -a game.apk=game.apk -a keys.ini=keys.ini -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/template.xml=sce_sys/livearea/contents/template.xml
GOTO CLNUP
:BUILDKEYSCFG
vita-mksfoex -d ATTRIBUTE2=12 -s TITLE_ID=%id% "%title%" param.sfo
vita-pack-vpk -s param.sfo -b eboot.bin "%id%.vpk" -a game.apk=game.apk -a yyl.cfg=yyl.cfg  -a keys.ini=keys.ini -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/template.xml=sce_sys/livearea/contents/template.xml
:CLNUP
@echo off
move ".\*.vpk*" "..\..\VPK"
del "vita-pack-vpk.exe"
del "vita-mksfoex.exe"
del "*.png*"
del "*.apk*"
del "*.ini*"
move ".\*.cfg*" "..\..\input"
exit
