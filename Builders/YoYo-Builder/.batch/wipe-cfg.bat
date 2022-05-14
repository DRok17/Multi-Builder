@echo off
:: WIPE CFG
del "..\*.bin*"
cd ".\config"
(echo 1) > hi.txt
del "*.txt*"
cd "..\.."
del "*.cfg*"
cd ".\.batch"
copy "yyl.cfg" ".."
start clearinput.bat
