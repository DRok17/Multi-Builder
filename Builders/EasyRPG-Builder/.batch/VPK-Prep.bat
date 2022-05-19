@echo off
set /p id=< ..\contents\bub-id.txt
set /p title=< ..\contents\bub-name.txt
@echo off
copy "..\..\..\.batch\vita-mksfoex.exe" ".."
copy "..\contents\eboot.bin" "..\build\"
copy "..\contents\template.xml" "..\build\sce_sys\livearea\contents\"
cd ..
vita-mksfoex -s TITLE_ID=%id% "%title%" build/sce_sys/param.sfo
echo %id% > build\titleid.txt

@echo off
IF EXIST ..\..\bg.png (
    GOTO ICO
  ) ELSE (
    GOTO ICO
  )
:ICO
@echo off
IF EXIST ..\..\icon0.png (
    GOTO SUP
  ) ELSE (
    GOTO FPNG
  )
:SUP
@echo off
IF NOT EXIST ..\..\startup.png (
    copy "..\..\.batch\startup.png" "."
    GOTO FPNG
  ) ELSE (
    GOTO FPNG
  )
:FPNG
@echo off
cd "./.batch"
start /min Robocopy-OUT.bat

:CheckForFile
SET LookForFile=".\GameFilesDone.txt"
IF EXIST %LookForFile% GOTO FoundIt
TIMEOUT /T 5 >nul
GOTO CheckForFile
:FoundIt

cd ..
copy "..\..\icon0.png" ".\build\sce_sys\"
copy "..\..\bg.png" ".\build\sce_sys\livearea\contents\"
copy ".\startup.png" ".\build\sce_sys\livearea\contents\"
copy "..\Bubble-Builder\7z.exe" "."
copy "..\Bubble-Builder\7z.dll" "."
exit


