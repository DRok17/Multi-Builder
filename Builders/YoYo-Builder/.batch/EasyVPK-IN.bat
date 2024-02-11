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

:5DONE
IF EXIST "..\5done.txt" (
    del ..\5done.txt
    GOTO BUILD
  ) ELSE (
    timeout 10 >nul
    GOTO 5DONE
  )

:BUILD
@echo off
cd "../Builders/YOYO-Builder/"
start z-5YoYo-Builder-VPK.bat
