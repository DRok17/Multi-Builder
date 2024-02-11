@echo off
call scale.bat -source bg.bmp -target bg1.png
call scale.bat -source bg.jpg -target bg1.png
call scale.bat -source bg.jpeg -target bg1.png
call scale.bat -source bg.jfif -target bg1.png
call scale.bat -source bg.tiff -target bg1.png
call scale.bat -source icon0.bmp -target icon01.png
call scale.bat -source icon0.jpg -target icon01.png
call scale.bat -source icon0.jpeg -target icon01.png
call scale.bat -source icon0.jfif -target icon01.png
call scale.bat -source icon0.tiff -target icon01.png
call scale.bat -source startup.bmp -target startup1.png
call scale.bat -source startup.jpg -target startup1.png
call scale.bat -source startup.jpeg -target startup1.png
call scale.bat -source startup.jfif -target startup1.png
call scale.bat -source startup.tiff -target startup1.png
call scale.bat -source pic0.bmp -target pic01.png
call scale.bat -source pic0.jpg -target pic01.png
call scale.bat -source pic0.jpeg -target pic01.png
call scale.bat -source pic0.jfif -target pic01.png
call scale.bat -source pic0.tiff -target pic01.png

@echo off
IF EXIST bg1.png (
    del "bg.png"
 ) ELSE (
    GOTO CONT1
 )
 :CONT1
 @echo off
 IF EXIST icon01.png (
     del "icon0.png"
  ) ELSE (
     GOTO CONT2
  )
:CONT2
  @echo off
  IF EXIST startup1.png (
      del "startup.png"
   ) ELSE (
      GOTO CONT3
   )
:CONT3
  IF EXIST pic01.png (
      del "pic0.png"
  ) ELSE (
      GOTO CONT4
  )

:CONT4
ren bg1.png bg.png
ren icon01.png icon0.png
ren startup1.png startup.png
ren pic01.png pic0.png
ren *.webp *.png


@echo off
for %%i in (.\*.bmp*) do del /q "%%i"
for %%i in (.\*.jpg*) do del /q "%%i"
for %%i in (.\*.jpeg*) do del /q "%%i"
for %%i in (.\*.jfif*) do del /q "%%i"
for %%i in (.\*.tiff*) do del /q "%%i"
(echo done) > ".\2done.txt"
exit
