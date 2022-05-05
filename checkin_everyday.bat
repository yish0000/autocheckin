@echo off

set PROJECT_PATH=E:\Projects\python\autocheckin

echo schtasks /Create /f /tn checkin_everyday /sc daily /st 12:00 /tr "%PROJECT_PATH%\checkin.bat"
schtasks /Create /f /tn checkin_everyday /sc daily /st 12:00 /tr "%PROJECT_PATH%\checkin.bat"

echo schtasks /Create /f /tn checkout_everyday /sc daily /st 12:00 /tr "%PROJECT_PATH%\checkout.bat"
schtasks /Create /f /tn checkout_everyday /sc daily /st 12:00 /tr "%PROJECT_PATH%\checkout.bat"

pause
