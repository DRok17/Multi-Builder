@echo off
@echo off
dir .\input\app-folder /a:d /b > list.txt
set /p id=< .\list.txt
for %%i in (.\*.png*) do del /q "%%i"


copy ".\input\*.bmp*" "."
copy ".\input\*.jpg*" "."
copy ".\input\*.jpeg*" "."
copy ".\input\*.jfif*" "."
copy ".\input\*.tiff*" "."
copy ".\input\*.png*" "."
copy ".\input\*.webp*" "."
IF EXIST .\input\app-folder\%id%\data\boot.bin (
    copy ".\.batch\psp.png" "."
    del "boot.png"
  ) ELSE (
    GOTO NEXT
  )
:NEXT

for %%i in (.\*.png*) do if not "%%i"==".\bg.png" if not "%%i"==".\icon0.png" if not "%%i"==".\startup.png" if not "%%i"==".\pic0.png" if not "%%i"==".\boot.png" if not "%%i"==".\psp.png" del /q "%%i"
(echo done) > ".\1done.txt"
del .\list.txt
exit
