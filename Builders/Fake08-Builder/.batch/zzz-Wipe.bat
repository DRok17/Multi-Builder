@echo off
del "..\*.png*"
del "..\*.bmp*"
del "..\*.jpg*"
del "..\*.jpeg*"
del "..\*.jfif*"
del "..\*.sfo*"
del "..\input\*.png*"
del "..\input\*.bmp*"
del "..\input\*.jpg*"
del "..\input\*.jpeg*"
del "..\input\*.jfif*"
for %%i in (..\contents\*.txt*) do if not "%%i"=="..\contents\template.txt" del /q "%%i"
exit
