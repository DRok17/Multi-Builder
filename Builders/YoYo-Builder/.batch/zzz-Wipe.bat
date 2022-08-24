@echo off
for %%i in (..\contents\*.txt*) do if not "%%i"=="..\contents\template.txt" del /q "%%i"
exit
