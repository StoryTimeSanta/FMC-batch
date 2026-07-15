@echo off
setlocal EnableDelayedExpansion

rem Use the current user's Downloads folder
set "DOWNLOADS=%USERPROFILE%\Downloads"

rem Create it if it doesn't exist
if not exist "%DOWNLOADS%" mkdir "%DOWNLOADS%"

rem Verify it exists
if exist "%DOWNLOADS%" (
    echo.
    echo Download folder verified:
    echo %DOWNLOADS%
    echo.
) else (
    echo.
    echo ERROR: Could not create or access download folder:
    echo %DOWNLOADS%
    echo.
    pause
    exit /b 1
)

set /p count=How many videos do you want to download? 

for /L %%i in (1,1,%count%) do (
    set /p "url[%%i]=Paste URL %%i: "
)

echo.
echo Starting downloads...
echo Saving files to:
echo %DOWNLOADS%
echo.

for /L %%i in (1,1,%count%) do (
    echo Downloading %%i of %count%...
    yt-dlp --no-playlist -P "%DOWNLOADS%" "!url[%%i]!"
REM    yt-dlp -P "%DOWNLOADS%" "!url[%%i]!"
)

echo.
echo All downloads complete.
echo Files saved to:
echo %DOWNLOADS%
echo.

start "" "%DOWNLOADS%"

pause