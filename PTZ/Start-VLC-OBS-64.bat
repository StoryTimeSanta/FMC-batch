@echo off

REM Optional: kill existing instances
taskkill /im vlc.exe /f >nul 2>&1
taskkill /im obs64.exe /f >nul 2>&1

REM --- START VLC ---
cd /d "C:\Program Files\VideoLAN\VLC"

start "VLC Camera" vlc.exe "rtsp://192.168.1.12:554/1" ^
 --rtsp-user=admin ^
 --rtsp-pwd=7100Aa7100 ^
 --video-x=1920 ^
 --video-y=0 ^
 --fullscreen ^
 --no-video-title-show ^
 --qt-minimal-view

REM Give VLC time to initialize
timeout /t 5 /nobreak >nul

REM --- START OBS (CRITICAL FIX) ---
cd /d "C:\Program Files\obs-studio\bin\64bit"

start "OBS" obs64.exe ^
 --profile "Camera" ^
 --scene "RTSP Cam"
