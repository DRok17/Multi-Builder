@echo off

cd "..\..\..\input\f8-rom"

dir *.png /b > ..\..\file2.txt

copy "..\..\file2.txt" "..\..\Builders\Fake08-Builder\contents"

cd ".."

rmdir /S /Q ".\f8-rom"
