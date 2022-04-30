@echo off

cd "."

IF EXIST .\.batch\z-deleteme.txt (
    del .\input\deleteme.txt
    del .\input\app-folder\deleteme.txt
    del .\vpk\deleteme.txt
    del .\vpk\.trash\deleteme.txt
    del .\.batch\z-deleteme.txt

    GOTO NEXT1
  ) ELSE (
    (echo DELETEME) > ".\.batch\z-deleteme.txt"
    (echo DELETEME) > ".\input\deleteme.txt"
    (echo DELETEME) > ".\input\app-folder\deleteme.txt"
    (echo DELETEME) > ".\vpk\deleteme.txt"
    (echo DELETEME) > ".\vpk\.trash\deleteme.txt"
  )
:NEXT1
@echo off

cd "."

IF EXIST .\.batch\z-hidden.txt (
    del .\.batch\z-hidden.txt
    GOTO NEXT2
  ) ELSE (
    GOTO NEXT2
  )
:NEXT2

@echo off
cd "."
IF EXIST *.* (
    attrib -h -s *.*
    attrib -h .batch
    GOTO EOF
  ) ELSE (
    exit
  )
:EOF
exit

