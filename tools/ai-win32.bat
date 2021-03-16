@echo off
cd ..
title Project Altis AI

rem Define some constants for our AI server:
set MAX_CHANNELS=999999
set STATESERVER=4002
set ASTRON_IP=127.0.0.1:7199
set EVENTLOGGER_IP=127.0.0.1:7197
set DISTRICT_NAME=Nuttyriver
set BASE_CHANNEL=401000000
set START_TIME=6

:main
"panda/python/python" -m toontown.ai.ServiceStart --base-channel %BASE_CHANNEL% ^
               --max-channels %MAX_CHANNELS% --stateserver %STATESERVER% ^
               --astron-ip %ASTRON_IP% --eventlogger-ip %EVENTLOGGER_IP% ^
               --district-name "%DISTRICT_NAME%" --start-time "%START_TIME%"
PAUSE
goto main
