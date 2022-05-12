:MENU
@ECHO OFF
mode 43,27
set /p appver=< .\appver.txt
set /p wipe=< .\config\wipe.txt
set /p .1=< .\config\1.txt
set /p .2=< .\config\2.txt
set /p .3=< .\config\3.txt
set /p .4=< .\config\4.txt
set /p .5=< .\config\5.txt
set /p .6=< .\config\6.txt
set /p .7=< .\config\7.txt
set /p .8=< .\config\8.txt
set /p .9=< .\config\9.txt
set /p .10=< .\config\10.txt
set /p .11=< .\config\11.txt
set /p .12=< .\config\12.txt
Title YOYO-BUILDER
ECHO                 YOYO-BUILDER
ECHO.
ECHO ...........................................
ECHO.
ECHO        * Game Configuration Selector *
ECHO.
ECHO      1 - Force GLES1 Mode             %.1%
ECHO      2 - Fake Windows as Platform     %.2%
ECHO      3 - Run with EXTD Mem Mode       %.3%
ECHO      4 - Rum with EXTD Runner Pool    %.4%
ECHO      5 - Run with Mem Squeezing       %.5%
ECHO      6 - Enable Video Support         %.6%
ECHO      7 - Enable Network Features      %.7%
ECHO.
ECHO      8 - Force Bilinear Filtering     %.8%
ECHO      9 - Compress Textures            %.9%
ECHO.
ECHO      10 - Skip Splashscreen at Boot   %.10%
ECHO.
ECHO      11 - Run with Debug Mode         %.11%
ECHO      12 - Run with Shaders Debug Mode %.12%
ECHO.
ECHO       W - Wipe Config File  %wipe%
ECHO.
ECHO.     NOTE : CHANGES WILL CLEAR ON EXIT
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==A GOTO RESET
IF %M%==1 GOTO GLES
IF %M%==2 GOTO WIND
IF %M%==3 GOTO MEM
IF %M%==4 GOTO RUN
IF %M%==5 GOTO SQZ
IF %M%==6 GOTO VID
IF %M%==7 GOTO NETW
IF %M%==8 GOTO BILI
IF %M%==9 GOTO TEXT
IF %M%==10 GOTO SPLASH
IF %M%==11 GOTO DBUG
IF %M%==12 GOTO SDBUG
IF %M%==w GOTO WIPE
IF %M%==W GOTO WIPE

:EOF
exit
:WIPE
del "..\*.bin*"
cd ".\config"
(echo 1) > hi.txt
del "*.txt*"
cd "..\.."
del "*.cfg*"
cd ".\.batch"
copy "yyl.cfg" ".."
start clearinput.bat
GOTO MENU

:GLES
IF EXIST .\config\1.txt (
    @echo off
    cd ".\config"
    del "1.txt"
    cd ".."
    (echo forceGLES1=1) > z-cfg-cur.txt
    (echo forceGLES1=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 1.txt
     cd ".."
     (echo forceGLES1=0) > z-cfg-cur.txt
     (echo forceGLES1=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:WIND
IF EXIST .\config\2.txt (
    @echo off
    cd ".\config"
    del "2.txt"
    cd ".."
    (echo winMode=1) > z-cfg-cur.txt
    (echo winMode=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 2.txt
     cd ".."
     (echo winMode=0) > z-cfg-cur.txt
     (echo winMode=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:MEM
IF EXIST .\config\3.txt (
    @echo off
    cd ".\config"
    del "3.txt"
    cd ".."
    (echo maximizeMem=1) > z-cfg-cur.txt
    (echo maximizeMem=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 3.txt
     cd ".."
     (echo maximizeMem=0) > z-cfg-cur.txt
     (echo maximizeMem=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:RUN
IF EXIST .\config\4.txt (
    @echo off
    cd ".\config"
    del "4.txt"
    cd ".."
    (echo maximizeNewlib=1) > z-cfg-cur.txt
    (echo maximizeNewlib=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 4.txt
     cd ".."
     (echo maximizeNewlib=0) > z-cfg-cur.txt
     (echo maximizeNewlib=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:SQZ
IF EXIST .\config\5.txt (
    @echo off
    cd ".\config"
    del "5.txt"
    cd ".."
    (echo squeezeMem=1) > z-cfg-cur.txt
    (echo squeezeMem=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 5.txt
     cd ".."
     (echo squeezeMem=0) > z-cfg-cur.txt
     (echo squeezeMem=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:VID
IF EXIST .\config\6.txt (
    @echo off
    cd ".\config"
    del "6.txt"
    cd ".."
    (echo videoSupport=1) > z-cfg-cur.txt
    (echo videoSupport=0) > z-cfg-new.txt
    del "..\*.bin*"
    copy "..\eboots\standalone.bin" ".."
    cd ..
    ren standalone.bin eboot.bin
    cd .\.batch
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 6.txt
     cd ".."
     (echo videoSupport=0) > z-cfg-cur.txt
     (echo videoSupport=1) > z-cfg-new.txt
     del "..\*.bin*"
     copy "..\eboots\standalone_video.bin" ".."
     cd ..
     ren standalone_video.bin eboot.bin
     cd .\.batch
     start def-cfg-OUT.bat
     GOTO MENU
  )

:NETW
IF EXIST .\config\7.txt (
    @echo off
    cd ".\config"
    del "7.txt"
    cd ".."
    (echo netSupport=1) > z-cfg-cur.txt
    (echo netSupport=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 7.txt
     cd ".."
     (echo netSupport=0) > z-cfg-cur.txt
     (echo netSupport=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:BILI
IF EXIST .\config\8.txt (
    @echo off
    cd ".\config"
    del "8.txt"
    cd ".."
    (echo forceBilinear=1) > z-cfg-cur.txt
    (echo forceBilinear=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 8.txt
     cd ".."
     (echo forceBilinear=0) > z-cfg-cur.txt
     (echo forceBilinear=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:TEXT
IF EXIST .\config\9.txt (
    @echo off
    cd ".\config"
    del "9.txt"
    cd ".."
    (echo compressTextures=1) > z-cfg-cur.txt
    (echo compressTextures=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 9.txt
     cd ".."
     (echo compressTextures=0) > z-cfg-cur.txt
     (echo compressTextures=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:SPLASH
IF EXIST .\config\10.txt (
    @echo off
    cd ".\config"
    del "10.txt"
    cd ".."
    (echo noSplash=1) > z-cfg-cur.txt
    (echo noSplash=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 10.txt
     cd ".."
     (echo noSplash=0) > z-cfg-cur.txt
     (echo noSplash=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:DBUG
IF EXIST .\config\11.txt (
    @echo off
    cd ".\config"
    del "11.txt"
    cd ".."
    (echo debugMode=1) > z-cfg-cur.txt
    (echo debugMode=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 11.txt
     cd ".."
     (echo debugMode=0) > z-cfg-cur.txt
     (echo debugMode=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

:SDBUG
IF EXIST .\config\12.txt (
    @echo off
    cd ".\config"
    del "12.txt"
    cd ".."
    (echo debugShaders=1) > z-cfg-cur.txt
    (echo debugShaders=0) > z-cfg-new.txt
    start def-cfg-OUT.bat
    GOTO MENU
  ) ELSE (
     cd ".\config"
    (echo - On) > 12.txt
     cd ".."
     (echo debugShaders=0) > z-cfg-cur.txt
     (echo debugShaders=1) > z-cfg-new.txt
     start def-cfg-OUT.bat
     GOTO MENU
  )

exit
