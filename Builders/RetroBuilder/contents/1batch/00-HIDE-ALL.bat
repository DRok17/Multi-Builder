@echo off
cd ".."
IF EXIST z-1CopyInput.bat (
    attrib +h +s z-1CopyInput.bat
    GOTO NEXT1
  ) ELSE (
    exit
  )
:NEXT1
@echo off
IF EXIST z-2PNGConvert.bat (
  attrib +h +s z-2PNGConvert.bat
  GOTO NEXT2
) ELSE (
  exit
)
:NEXT2
@echo off
IF EXIST z-3Resize.bat (
    attrib +h +s z-3Resize.bat
    GOTO NEXT3
  ) ELSE (
    exit
  )
:NEXT3
@echo off
IF EXIST z-4PNG-Pallete-256.bat (
    attrib +h +s z-4PNG-Pallete-256.bat
    GOTO NEXT4
  ) ELSE (
    exit
  )
:NEXT4
@echo off
IF EXIST z-changefile.bat (
    attrib +h +s z-changefile.bat
    GOTO NEXT5
  ) ELSE (
    exit
  )
:NEXT5
@echo off
IF EXIST z-filechange.bat (
    attrib +h +s z-filechange.bat
    GOTO NEXT6
  ) ELSE (
    exit
  )
:NEXT6
@echo off
IF EXIST z-rename.bat (
    attrib +h +s z-rename.bat
    GOTO NEXT7
  ) ELSE (
    exit
  )
:NEXT7
@echo off
IF EXIST pngquant.exe (
    attrib +h +s pngquant.exe
    GOTO NEXT8
  ) ELSE (
    exit
  )
:NEXT8
@echo off
IF EXIST scale.bat (
    attrib +h +s scale.bat
    GOTO FOLD1
  ) ELSE (
    exit
  )
:FOLD1
@echo off
IF EXIST 1batch (
    attrib +h +s 1batch
    GOTO FOLD2
  ) ELSE (
    exit
  )
:FOLD2
@echo off
IF EXIST 1sample (
    attrib +h +s 1sample
    GOTO FOLD3
  ) ELSE (
    exit
  )
:FOLD3
@echo off
IF EXIST package (
    attrib +h +s package
    GOTO BUILD0
  ) ELSE (
    exit
  )
:BUILD0
@echo off
cd ".."
IF EXIST build-nameid.bat (
    attrib +h +s build-nameid.bat
    GOTO BUILD1
  ) ELSE (
    exit
  )
:BUILD1
@echo off
IF EXIST build-nameid-rom.bat (
  attrib +h +s build-nameid-rom.bat
  GOTO BUILD2
) ELSE (
  exit
)
:BUILD2
@echo off
IF EXIST build-autopath-nameid.bat (
    attrib +h +s build-autopath-nameid.bat
    GOTO BUILD3
  ) ELSE (
    exit
  )
:BUILD3
@echo off
IF EXIST build-auto.bat (
    attrib +h +s build-auto.bat
    GOTO BUILD4
  ) ELSE (
    exit
  )
:BUILD4
@echo off
IF EXIST vita-mksfoex.exe (
    attrib +h +s vita-mksfoex.exe
    GOTO BUILD5
  ) ELSE (
    exit
  )
:BUILD5
@echo off
IF EXIST vita-pack-vpk.exe (
    attrib +h +s vita-pack-vpk.exe
    GOTO BUILD6
  ) ELSE (
    exit
  )
:BUILD6
@echo off
IF EXIST LICENSE (
    attrib +h +s LICENSE
    GOTO BUILD7
  ) ELSE (
    exit
  )
:BUILD7
@echo off
IF EXIST PKG.bat (
    attrib +h +s PKG.bat
    GOTO EOF
  ) ELSE (
    exit
  )

:EOF
exit
