@echo off
set /p cfgnew=< .\z-cfg-new.txt
set /p cfgcur=< .\z-cfg-cur.txt
jrepl "%cfgcur%" "%cfgnew%" /f ..\yyl.cfg /o -
exit
