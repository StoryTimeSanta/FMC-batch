@echo off

:Open Startup Folder
:shell:startup

echo Would you like to turn the projectors ON or OFF?
echo (Y = Yes, N = No)
choice /C YN /N

if errorlevel 2 (
    echo You chose No.
    goto END
) else (
    echo You chose Yes.
)

echo | set /p=Administrator|clip
cls
echo Note you must do the next steps two times (once for each projector).
echo.
echo Choose:
echo POWER for ON
echo STANDBY for OFF
echo.
echo To login: Paste the username using CTRL + V
pause

REM Open the first URL in Chrome's guest profile
start chrome --profile-directory="Guest"  --new-tab "http://192.168.1.88/html/remote.html"

REM Open the second URL in Chrome's guest profile
start chrome --profile-directory="Guest"  --new-tab "http://192.168.1.145/html/remote.html"

:END
END

:https://chatgpt.com/?utm_source=google&utm_medium=paidsearch_brand&utm_campaign=DEPT_SEM_Google_Brand_Acquisition_NAMER_US_Consumer_CPA_BAU_Mix&utm_term=chatgpt&gad_source=1&gclid=EAIaIQobChMIo_KTpffajAMV-lx_AB0bKCRwEAAYASAAEgJxWfD_BwE
