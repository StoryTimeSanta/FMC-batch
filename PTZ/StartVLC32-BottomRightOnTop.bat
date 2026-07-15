@echo off

set VLC="C:\Program Files\VideoLAN\VLC\vlc.exe"
set RTSP_URL=rtsp://192.168.1.12:554/1
set USER=admin
set PASS=7100Aa7100

REM Screen size
set SCREEN_W=1920
set SCREEN_H=1080

REM Window = 50% (25% area)
set /a WIN_W=%SCREEN_W%/2
set /a WIN_H=%SCREEN_H%/2

REM Bottom-right position
set /a POS_X=%SCREEN_W%-%WIN_W%
set /a POS_Y=%SCREEN_H%-%WIN_H%

start "" %VLC% "%RTSP_URL%" ^
 --rtsp-user=%USER% ^
 --rtsp-pwd=%PASS% ^
 --video-x=%POS_X% ^
 --video-y=%POS_Y% ^
 --no-video-deco ^
 --no-embedded-video ^
 --qt-minimal-view ^
 --width=%WIN_W% ^
 --height=%WIN_H% ^
 --no-video-title-show ^
 --no-qt-fs-controller