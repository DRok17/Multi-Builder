@echo off
powershell -Command "Invoke-WebRequest https://github.com/Rinnegatamante/yoyoloader_vita/releases/download/Nightly/builder.zip -OutFile builder.zip"
copy "..\..\Bubble-Builder\*.dll*" "."
copy "..\..\Bubble-Builder\*.exe*" "."
@echo off
7z e builder.zip *.bin -r
@echo off
del "..\eboots\*.bin*"
copy "*.bin*" "..\eboots\"

@echo off
del ".\*.zip*"
del ".\*.bin*"
del "..\*.bin*"
del ".\*.dll*"
del ".\*.exe*"
exit
