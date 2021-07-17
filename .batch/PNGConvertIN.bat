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

cd ".\.batch"

start PNGConvert-FINISH.bat

timeout 3 >nul

exit
