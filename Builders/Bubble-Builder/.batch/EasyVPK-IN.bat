@echo off

cd "../../../.batch"
start PNGConvertOUT.bat

timeout 18 >nul

@echo off
cd "../Builders/Bubble-Builder/"
start z-5RePackVPK.bat
