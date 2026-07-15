@echo off

echo Would you like to turn the projectors ON or OFF?
echo (1 = Power On, 2 = Standby)
choice /C 12 /N

if errorlevel 2 (
    echo You chose Standby.
    set signal=v:30
    set action=Standby
) else if errorlevel 1 (
    echo You chose Power On.
    set signal=v:29
    set action=Power On
)

echo Sending %action% signal to both projectors...

REM Sending signal to the first projector (192.168.1.88)
curl -u Administrator: "http://192.168.1.161/cgi-bin/webctrl.cgi.elf?p=1&c=4627&v=2&%signal%"

REM Sending signal to the second projector (192.168.1.145)
curl -u Administrator: "http://192.168.1.162/cgi-bin/webctrl.cgi.elf?p=1&c=4627&v=2&%signal%"

echo %action% signal sent to both projectors.

echo "http://192.168.1.161/cgi-bin/webctrl.cgi.elf?p=1&c=4627&v=2&%signal%"
echo "http://192.168.1.162/cgi-bin/webctrl.cgi.elf?p=1&c=4627&v=2&%signal%"


pause

:END
END
