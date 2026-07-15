@echo off

:yt-dlp ""
:yt-dlp "VIDEO_URL"

setlocal EnableDelayedExpansion

if not exist "Downloads" mkdir "Downloads"

set /p count=How many videos do you want to download? 

for /L %%i in (1,1,%count%) do (
    set /p url[%%i]=Paste URL %%i: 
)

echo.
echo Starting downloads...
echo.

for /L %%i in (1,1,%count%) do (
    echo Downloading %%i of %count%...
    yt-dlp -P "Downloads" "!url[%%i]!"
)

echo.
echo All downloads complete.
pause