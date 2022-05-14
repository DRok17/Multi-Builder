@echo off
dir ..\..\..\input\app-folder /a:d /b > list.txt
set /p id=< .\list.txt
set /p stynew=< .\z-lastyle-new.txt
set /p stycur=< .\z-lastyle-cur.txt
copy "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml" "."
del "..\..\..\input\app-folder\%id%\sce_sys\livearea\contents\template.xml"
jrepl "%stycur%" "%stynew%" /f .\template.xml /o -
exit
