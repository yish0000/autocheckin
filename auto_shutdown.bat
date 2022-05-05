@echo on

set SHUTDOWN_TIME=16:15
schtasks /Create /f /tn checkout /sc once /st %SHUTDOWN_TIME% /tr "shutdown -s -f -t 5"

pause