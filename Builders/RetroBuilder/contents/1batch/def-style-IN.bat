@echo off
set /p stynew=< .\z-lastyle-new.txt
set /p stycur=< .\z-lastyle-cur.txt
jrepl "%stycur%" "%stynew%" /f ..\template.xml /o -
exit
