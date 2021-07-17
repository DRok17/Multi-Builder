@echo off
cd "..\backup"
IF EXIST deleteme.txt (
    del deleteme.txt
    GOTO NEXT1
  ) ELSE (
    NEXT1
  )
:NEXT1
@echo off
cd "..\input"
IF EXIST deleteme.txt (
    del deleteme.txt
    GOTO NEXT2
  ) ELSE (
    NEXT2
  )
:NEXT2
@echo off
cd ".\1backup"
IF EXIST deleteme.txt (
    del deleteme.txt
    GOTO NEXT3
  ) ELSE (
    NEXT3
  )
:NEXT3
@echo off
cd "..\0splitter"
IF EXIST deleteme.txt (
    del deleteme.txt
    GOTO NEXT4
  ) ELSE (
    NEXT4
  )
:NEXT4
@echo off
cd "..\..\..\VPK"
IF EXIST deleteme.txt (
    del deleteme.txt
    GOTO EOF
  ) ELSE (
    exit
  )
:EOF
exit
