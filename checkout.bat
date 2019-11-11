@echo off

set USERNAME=shizhenhua
set PASSWORD=yish8866983
set PROJECT_PATH=D:\Project\python\autocheckin

if %date:~-2% == ÷‹¡˘ (exit 0)
if %date:~-2% == ÷‹»’ (exit 0)

set /a num=%RANDOM%%%60
if %num% lss 10 (set num=0%num%)
schtasks /Create /f /tn checkout /sc once /st 21:%num% /tr "%PROJECT_PATH%\auto_checkin.exe %USERNAME% %PASSWORD%"

:pause