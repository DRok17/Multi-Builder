@echo off

start VPKConvert-START.bat

timeout 3 >nul

cd ..
start /min z-5RePackVPK.bat
exit
