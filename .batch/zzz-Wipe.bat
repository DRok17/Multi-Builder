@echo off
del "..\*.png*"
del "..\*.bmp*"
del "..\*.jpg*"
del "..\*.jpeg*"
del "..\*.jfif*"
del "..\*.tiff*"
del "..\*.webp*"
del "..\*.sfo*"
del "..\input\*.png*"
del "..\input\*.bmp*"
del "..\input\*.jpg*"
del "..\input\*.jpeg*"
del "..\input\*.jfif*"
del "..\input\*.tiff*"
del "..\input\*.webp*"
del "..\contents\*.txt*"
del "..\input\*.gbc*"
del "..\input\*.gba*"
del "..\input\*.gb*"
del "..\input\*.gen*"
del "..\input\*.bin*"
del "..\input\*.smd*"
del "..\input\*.sms*"
del "..\input\*.gg*"
del "..\input\*.nes*"
del "..\input\*.smc*"
del "..\input\*.sfc*"
del "..\input\*.n64*"
del "..\input\*.z64*"
del "..\input\*.v64*"
del "..\input\*.apk*"
del "..\input\*.gdi*"
del "..\input\*.cdi*"
del "..\input\*.chd*"
del "..\input\*.cfg*"
del "..\input\*.ini*"
del "..\Builders\YoYo-Builder\*.cfg*"
del "..\Builders\Bubble-Builder\.batch\template-old.xml"
del "..\file2.txt"
rmdir /S /Q "..\vpk\.trash"
md "..\vpk\.trash"
rmdir /S /Q "..\input\app-folder"
md "..\input\app-folder"
cd "../Builders/RetroBuilder/contents/1batch/"
start /min zzz-Wipe.bat
cd "../../../../.batch"
cd "../Builders/YoYo-Builder/.batch/"
start /min wipe-cfg.bat
exit
