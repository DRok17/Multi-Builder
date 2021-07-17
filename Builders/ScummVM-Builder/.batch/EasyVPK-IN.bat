@echo off

cd "../../../.batch"
start PNGConvertOUT.bat

timeout 18 >nul

@echo off
cd "../Builders/ScummVM-Builder/"
start z-5ScummVM-Builder-VPK.bat
