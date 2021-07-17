@echo off

cd ".\contents\1batch"

start /min 00-HIDE-ALL.bat

cd "."

start /min 00-DELETE-ME.bat

cd "."

start 1RetroBuilder.bat

cd "."

copy "zz-RetroBuilder.bat" "..\.."

exit
