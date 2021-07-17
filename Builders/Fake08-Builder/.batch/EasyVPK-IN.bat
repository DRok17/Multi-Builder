@echo off

cd "../../../.batch"
start PNGConvertOUT.bat

timeout 18 >nul

@echo off
cd "../Builders/Fake08-Builder/"
start z-5FAKE08-Builder-VPK.bat
