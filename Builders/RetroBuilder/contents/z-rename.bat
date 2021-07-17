@echo off
IF EXIST rom2.txt (
    @echo off
    del "rom.txt"
    GOTO CONT1
 ) ELSE (
    GOTO CONT2
 )
 :CONT1
ren rom2.txt rom.txt
:CONT2
exit