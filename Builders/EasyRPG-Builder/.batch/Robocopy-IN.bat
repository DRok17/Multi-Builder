@echo off
Robocopy ..\..\..\input\app-folder ..\build\Play /E
(echo Game Files Done) > GameFilesDone.txt
exit
