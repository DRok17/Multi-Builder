@echo off

cd "..\..\..\input\"

md ".\f8-rom"

for %%i in (.\*.png*) do if not "%%i"==".\bg.png" if not "%%i"==".\icon0.png" if not "%%i"==".\startup.png" if not "%%i"==".\pic0.png" copy "%%i" ".\input\f8-rom"

cd ".\f8-rom"

dir *.png /b > ..\..\file2.txt

copy "..\..\file2.txt" "..\..\Builders\Fake08-Builder\contents"

cd ".."

rmdir /S /Q ".\f8-rom"
