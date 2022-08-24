@echo off
cd "../../../input"
IF EXIST *.png (
    GOTO PNG
  ) ELSE (
    GOTO NEXT1
  )
:NEXT1
IF EXIST *.jpg (
    GOTO PNG
  ) ELSE (
    GOTO NEXT2
  )
:NEXT2
IF EXIST *.jpeg (
    GOTO PNG
  ) ELSE (
    GOTO NEXT3
  )
:NEXT3
IF EXIST *.bmp (
    GOTO PNG
  ) ELSE (
    GOTO NEXT4
  )
:NEXT4
IF EXIST *.jfif (
    GOTO PNG
  ) ELSE (
    GOTO NEXT5
  )
:NEXT5
IF EXIST *.tiff (
    GOTO PNG
  ) ELSE (
    GOTO BUILD
  )
:PNG
@echo off
cd "../.batch"
start PNGConvertOUT.bat

timeout 18 >nul

:BUILD
@echo off
cd "../Builders/Flycast-Builder/"
start z-5Flycast-Builder-VPK.bat
