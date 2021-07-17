@echo off
set /p fold2=< .\1resources\sys\def-rom-path.txt
set /p fold=< .\1resources\sys\prv-rom-path.txt
z-changefile.bat "%fold%" "%fold2%" "rom.txt" >"rom2.txt"


