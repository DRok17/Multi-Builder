@echo off
SET "bgnew2=bg0.png"
SET "bgold2=bg.png"
jrepl "%bgold2%" "%bgnew2%" /f ..\template.xml /o -
exit
