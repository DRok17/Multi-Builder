@echo off
cd "."
IF EXIST *.* (
    attrib -h -s *.*
    GOTO NEXT1
  ) ELSE (
    exit
  )
:NEXT1


:EOF
exit
