@echo off

REM set PATH="C:\Program Files (x86)\UiPath\Studio";%PATH^%
set PATH=C:\Users\User\AppData\Local\UiPath\app-20.10.5;%PATH%

cd %~dp0

call UiRobot.exe execute ^
    --file "%~dp0project.json" ^
    --input "{ 'in_OptionalColumns': ['processName', 'totalExecutionTimeInSeconds'] }
