@echo off
REM Written By Richard Hudson - You're Welcome

echo Power ON Both Projectors?
echo Note if they were recently on they need to cool down before this will work.
pause
cls

REM Power On Both Projectors
REM echo Powering On Both Projectors
echo Written By Richard Hudson - You're Welcome

:Left
echo.
echo Starting Left Projector
ping -n 1 192.168.1.88 >nul
if errorlevel 1 (
    echo Right projector is offline - skipping power command
) else (
    curl -s -X POST "http://192.168.1.88/cgi-bin/webctrl.cgi.elf?&p:1,c:4627,v:2,v:29"
)
echo.

:Right
echo.
echo Starting Right Projector
ping -n 1 192.168.1.145 >nul
if errorlevel 1 (
    echo Right projector is offline - skipping power command
) else (
    curl -s -X POST "http://192.168.1.145/cgi-bin/webctrl.cgi.elf?&p:1,c:4627,v:2,v:29"
)
echo.

goto End

REM Open Control Pages
:LControl
start "" chrome --profile-directory="Guest" "http://192.168.1.88/html/remote.html"
:RControl
start "" chrome --profile-directory="Guest" "http://192.168.1.145/html/remote.html"

:End
echo.
pause
