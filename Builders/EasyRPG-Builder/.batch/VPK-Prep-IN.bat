@echo off

start VPK-Prep-START.bat

cd "."

start /min VPK-Prep.bat

(echo Prep Started) > Asset-Prep.txt

:PrepPending
SET LookForPrep="..\7z.dll"
IF EXIST %LookForPrep% GOTO FoundPrep
TIMEOUT /T 5 >nul
GOTO PrepPending
:FoundPrep

cd "."

start VPK-zBuild-START.bat

cd "."

start /min VPK-zBuild.bat

:BuildPending
SET LookForBuild=".\VPK-Done.txt"
IF EXIST %LookForBuild% GOTO FoundBuild
TIMEOUT /T 5 >nul
GOTO BuildPending
:FoundBuild

cd "."

start VPK-zBuild-zFINISH.bat

timeout 3 >nul

exit
