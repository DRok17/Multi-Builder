@echo off
set /p sys=< .\contents\sys-id.txt
set /p id=< .\contents\rom-id.txt

del /Q ".\contents\1resources\games\%sys%\%id%"

md ".\contents\1resources\games\%sys%\%id%"

copy ".\contents\package\*.png*" ".\contents\1resources\games\%sys%\%id%"
copy ".\contents\package\*.txt*" ".\contents\1resources\games\%sys%\%id%"
copy ".\contents\package\*.bat*" ".\contents\1resources\games\%sys%\%id%"
copy ".\contents\package\*.vbs*" ".\contents\1resources\games\%sys%\%id%"
copy ".\contents\package\*.vpk*" ".\contents\1resources\games\%sys%\%id%"

@echo off
IF EXIST .\contents\1resources\games\%sys%\%id%\*.bat* (
    attrib +h +s .\contents\1resources\games\%sys%\%id%\*.bat*
    GOTO HIDEVBS
  ) ELSE (
    exit
  )
:HIDEVBS
@echo off
IF EXIST .\contents\1resources\games\%sys%\%id%\*.vbs* (
    attrib +h +s .\contents\1resources\games\%sys%\%id%\*.vbs*
    GOTO NOHIDE
  ) ELSE (
    exit
  )

:NOHIDE
@echo off
IF EXIST .\contents\1resources\games\%sys%\%id%\1gameinput.bat (
    attrib -h -s .\contents\1resources\games\%sys%\%id%\1gameinput.bat
    exit
  ) ELSE (
    exit
    )


exit
