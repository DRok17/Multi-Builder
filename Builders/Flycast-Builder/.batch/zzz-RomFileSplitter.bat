@echo off

for %%i in (..\*.txt*) do if not "%%i"=="..\template.txt" if not "%%i"=="..\core.txt" if not "%%i"=="..\rom.txt" if not "%%i"=="..\rom-id.txt" if not "%%i"=="..\rom-name.txt" if not "%%i"=="..\sys-id.txt" del /q "%%i"

cd "..\..\..\input"

dir *.cdi *.gdi *.chd /b > ..\file2.txt

copy "..\file2.txt" "..\Builders\Flycast-Builder\contents"
cd ".."
del "file2.txt"
