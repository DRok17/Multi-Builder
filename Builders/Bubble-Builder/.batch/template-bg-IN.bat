@echo off
SET "bgnew1=bg.png"
SET "bgold1=bg0.png"
jrepl "%bgold1%" "%bgnew1%" /f ..\template.xml /o -
exit
