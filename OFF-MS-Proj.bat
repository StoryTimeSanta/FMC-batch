@echo off
REM Written By Richard Hudson - You're Welcome
echo Power OFF Both Projectors?
pause
cls

REM Power Off Both Projectors (StandBy)
echo Powering Off Both Projectors
echo Written By Richard Hudson - You're Welcome

:Left
echo.
echo Powering Off Left Projector
ping -n 1 192.168.1.88 >nul
if errorlevel 1 (
    echo Right projector is offline - skipping power command
) else (
    curl -X POST "http://192.168.1.88/cgi-bin/webctrl.cgi.elf?&p:1,c:4627,v:2,v:30"
)
echo.

:Right
echo.
echo Powering Off Right Projector
ping -n 1 192.168.1.145 >nul
if errorlevel 1 (
    echo Right projector is offline - skipping power command
) else (
    curl -X POST "http://192.168.1.145/cgi-bin/webctrl.cgi.elf?&p:1,c:4627,v:2,v:30"
)
echo.


:End
echo.
pause