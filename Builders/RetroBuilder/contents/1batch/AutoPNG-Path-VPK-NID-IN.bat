@echo off

start PNGConvert-START.bat

timeout 3 >nul

cd ".."

start /min z-1CopyInput.bat

timeout 3 >nul

cd "."

start /min z-2PNGConvert.bat

timeout 3 >nul

cd "."

start /min z-3Resize.bat

timeout 3 >nul

cd "."

start /min z-4PNG-Pallete-256.bat

timeout 3 >nul

cd ".\input"

@echo off
IF EXIST *.gbc (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT1
  )
:NEXT1
@echo off
IF EXIST *.gba (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT2
  )
:NEXT2
@echo off
IF EXIST *.gb (
    cd "..\.."
    GOTO APNID
      ) ELSE (
    GOTO NEXT3
  )
:NEXT3
@echo off
IF EXIST *.gen (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT4
  )
:NEXT4
@echo off
IF EXIST *.bin (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT5
  )
:NEXT5
@echo off
IF EXIST *.smd (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT6
  )
:NEXT6
@echo off
IF EXIST *.nes (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT7
  )
:NEXT7
@echo off
 IF EXIST *.smc (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    GOTO NEXT8
  )
:NEXT8
@echo off
 IF EXIST *.sfc (
    cd "..\.."
    GOTO APNID
  ) ELSE (
    cd "..\.."
    GOTO ANID
  )

:APNID
start build-autopath-nameid.bat

timeout 3 >nul

exit

:ANID
start build-nameid.bat

timeout 3 >nul

exit
