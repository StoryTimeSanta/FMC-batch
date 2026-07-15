@echo off

set VLC="C:\Program Files\VideoLAN\VLC\vlc.exe"
set RTSP_URL=rtsp://192.168.1.12:554/1
set USER=admin
set PASS=7100Aa7100

start "VLC Camera" %VLC% "%RTSP_URL%" ^
 --rtsp-user=%USER% ^
 --rtsp-pwd=%PASS% ^
 --video-x=1920 ^
 --video-y=0 ^
 --fullscreen ^
 --no-video-title-show ^
 --qt-minimal-view
