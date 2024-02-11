@echo off

start PNGConvert-START.bat

timeout 3 >nul

cd ".."

start /min z-1CopyInput.bat
:COP
IF EXIST ".\1done.txt" (
    del .\1done.txt
    GOTO CONV
  ) ELSE (
    timeout 3 >nul
    GOTO COP
  )
:CONV

cd "."

start /min z-2PNGConvert.bat

:CONV2
IF EXIST ".\2done.txt" (
    del .\2done.txt
    GOTO RESIZE
  ) ELSE (
    timeout 3 >nul
    GOTO CONV2
  )
:RESIZE

cd "."

start /min z-3Resize.bat

:RESIZE2
IF EXIST ".\3done.txt" (
    del .\3done.txt
    GOTO PNGSQZ
  ) ELSE (
    timeout 3 >nul
    GOTO RESIZE2
  )
:PNGSQZ

cd "."

start /min z-4PNG-Pallete-256.bat

:PNGSQZ2
IF EXIST ".\4done.txt" (
    del .\4done.txt
    (echo done) > ".\5done.txt"
    GOTO FINISH
  ) ELSE (
    timeout 3 >nul
    GOTO PNGSQZ2
  )
:FINISH

cd ".\.batch"

start PNGConvert-FINISH.bat

timeout 3 >nul

exit
