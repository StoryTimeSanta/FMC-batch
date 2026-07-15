@echo off
: PTZ Optics MS1 Camera Info
: rtsp://192.168.1.12:554/1
: http://192.168.1.12
:"C:\Program Files\VideoLAN\VLC\vlc.exe"

echo Starting VLC... Press CTRL + N to open Network Connection
start "VLC LFMC" "C:\Program Files\VideoLAN\VLC\vlc.exe"

echo|set /p="rtsp://192.168.1.12:554/1"|clip
pause

echo|set /p="admin"|clip
pause

echo|set /p="7100Aa7100"|clip
pause