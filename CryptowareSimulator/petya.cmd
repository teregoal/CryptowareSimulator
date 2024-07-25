@echo off

REM *** Zet dual screen uit ***
displayswitch.exe /internal

REM *** Toon encrypting files cmd voor pauze om niet edge te starten voordat dual screen er af is
for /f "delims=*" %%a in ('dir c:\windows /b') do @echo Encrypting c:\windows\%%a
for /f "delims=*" %%a in ('dir c:\windows\system32 /b') do @echo Encrypting c:\windows\system32\%%a
for /f "delims=*" %%a in ('dir "%CommonProgramFiles%" /b /s') do @echo Encrypting %%a

REN *** Start Esdge in Kiosk mode. Alleen met ALT+F4 of Alt+Tab te cancelen
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%~dp0/petya.html" --profile-directory=Default --kiosk --edge-kiosk-type=fullscreen --disable-translate --lang=en
