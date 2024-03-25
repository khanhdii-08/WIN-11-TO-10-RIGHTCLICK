@echo off
echo Adding registry key...
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
echo Registry key added. Press ENTER to continue.
pause > nul

echo Killing explorer.exe...
taskkill /f /im explorer.exe
echo explorer.exe killed. Press ENTER to continue.
pause > nul

echo Restarting explorer.exe...
start explorer.exe
echo explorer.exe restarted. Press ENTER to exit.
pause > nul