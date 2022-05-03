@echo off

for %%i in (..\*.txt*) do if not "%%i"=="..\core.txt" if not "%%i"=="..\rom.txt" if not "%%i"=="..\rom-id.txt" if not "%%i"=="..\rom-name.txt" if not "%%i"=="..\sys-id.txt" del /q "%%i"

cd "..\..\..\..\input"

dir *.nes *.smc *.gbc *.gba *.gb *.gen *.bin *.smd *.sms *.gg *.sfc *.n64 *.z64 *.v64 /b > ..\file2.txt

copy "..\file2.txt" "..\Builders\RetroBuilder\contents"
