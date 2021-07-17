@echo off

set path=%~d0%~p0

:start

"%path%pngquant.exe" --force --verbose 256 %1  "%path%bg.png"  "%path%icon0.png"  "%path%startup.png" "%path%pic0.png"

@echo off
shift
if NOT x%1==x goto start

@echo off
del bg.png
del icon0.png
del startup.png
del pic0.png
ren bg-fs8.png bg.png
ren icon0-fs8.png icon0.png
ren startup-fs8.png startup.png
ren pic0-fs8.png pic0.png
exit
