@echo off
SET "bgnew1=startup.png"
SET "bgold1=default_gate.png"
jrepl "%bgold1%" "%bgnew1%" /f ..\template.xml /o -
exit
