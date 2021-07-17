@echo off
dir .\input\app-folder /a:d /b > list.txt
set /p id=< .\list.txt

call scale.bat -source bg.png -target bg1.png -max-height 540 -max-width 960 -keep-ratio no -force yes
call scale.bat -source icon0.png -target icon01.png -max-height 128 -max-width 128 -keep-ratio no -force yes
call scale.bat -source startup.png -target startup1.png -max-height 158 -max-width 280 -keep-ratio no -force yes
call scale.bat -source pic0.png -target pic01.png -max-height 544 -max-width 960 -keep-ratio no -force yes


IF EXIST .\input\app-folder\%id%\data\boot.bin (
    composite startup1.png -gravity south psp.png startup2.png
    call scale.bat -source pic0.png -target boot1.png -max-height 272 -max-width 480 -keep-ratio no -force yes
  ) ELSE (
    GOTO NEXT
  )
:NEXT

@echo off
del bg.png
del icon0.png
del startup.png
del pic0.png
del psp.png
ren bg1.png bg.png
ren icon01.png icon0.png
IF EXIST .\input\app-folder\%id%\data\boot.bin (
    del startup1.png
    ren startup2.png startup.png
    ren boot1.png boot.png
  ) ELSE (
    ren startup1.png startup.png
    GOTO NEXT2
  )
:NEXT2
IF EXIST .\boot.png (
    GOTO NEXT5
  ) ELSE (
    GOTO NEXT3
  )
:NEXT3
IF EXIST .\input\app-folder\%id%\data\boot.bin (
    GOTO NEXT4
  ) ELSE (
    GOTO NEXT5
  )
:NEXT4
IF EXIST .\pic0.png (
    GOTO NEXT5
  ) ELSE (
    copy ".\.batch\boot.png" "."
    GOTO NEXT5
  )
:NEXT5
ren pic01.png pic0.png
del startup1.png

@echo off
del "bg.bmp"
del "bg.jpg"
del "bg.jpeg"
del "bg.jfif"
del "bg.tiff"
del "icon0.bmp"
del "icon0.jpg"
del "icon0.jpeg"
del "icon0.jfif"
del "icon0.tiff"
del "startup.bmp"
del "startup.jpg"
del "startup.jpeg"
del "startup.jfif"
del "startup.tiff"
del "pic0.bmp"
del "pic0.jpg"
del "pic0.jpeg"
del "pic0.jfif"
del "pic0.tiff"
del .\list.txt
exit
