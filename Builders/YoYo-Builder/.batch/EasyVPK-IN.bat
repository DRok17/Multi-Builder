@echo off

cd "../../../.batch"
start PNGConvertOUT.bat

timeout 18 >nul

@echo off
cd "../Builders/YOYO-Builder/"
start z-5YoYo-Builder-VPK.bat
