@echo off
cd "../../../../input"
IF EXIST *.png (
    GOTO PNG
  ) ELSE (
    GOTO NEXT01
  )
:NEXT01
IF EXIST *.jpg (
    GOTO PNG
  ) ELSE (
    GOTO NEXT02
  )
:NEXT02
IF EXIST *.jpeg (
    GOTO PNG
  ) ELSE (
    GOTO NEXT03
  )
:NEXT03
IF EXIST *.bmp (
    GOTO PNG
  ) ELSE (
    GOTO NEXT04
  )
:NEXT04
IF EXIST *.jfif (
    GOTO PNG
  ) ELSE (
    GOTO NEXT05
  )
:NEXT05
IF EXIST *.tiff (
    GOTO PNG
  ) ELSE (
    GOTO BUILD
  )
:PNG
@echo off
cd "../.batch"
start PNGConvertOUT.bat
cd "../input"
timeout 18 >nul

:BUILD

@echo off
IF EXIST *.gbc (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT1
  )
:NEXT1
@echo off
IF EXIST *.gba (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT2
  )
:NEXT2
@echo off
IF EXIST *.gb (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
      ) ELSE (
    GOTO NEXT3
  )
:NEXT3
@echo off
IF EXIST *.gen (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT4
  )
:NEXT4
@echo off
IF EXIST *.bin (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT5
  )
:NEXT5
@echo off
IF EXIST *.smd (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT6
  )
:NEXT6
@echo off
IF EXIST *.nes (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT7
  )
:NEXT7
@echo off
 IF EXIST *.smc (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT8
  )
:NEXT8
@echo off
 IF EXIST *.sfc (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT9
  )
:NEXT9
@echo off
  IF EXIST *.gg (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT10
  )
:NEXT10
@echo off
  IF EXIST *.n64 (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT11
  )
:NEXT11
@echo off
  IF EXIST *.v64 (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT12
  )
:NEXT12
@echo off
  IF EXIST *.z64 (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    GOTO NEXT13
  )
:NEXT13
@echo off
 IF EXIST *.sms (
    cd "../Builders/RetroBuilder/"
    GOTO APNID
  ) ELSE (
    cd "../Builders/RetroBuilder/"
    GOTO ANID
  )
:APNID
start build-autopath-nameid.bat

timeout 3 >nul

exit

:ANID
start build-nameid-rom.bat

timeout 3 >nul

exit
