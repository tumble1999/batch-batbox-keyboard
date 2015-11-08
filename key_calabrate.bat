@echo off
call batbox
if exist key.bat del key.bat
:Start
batbox /g 0 0 /d "Press a Key..."
BATBOX /k
echo.
set /p key=Name of key: 
echo if %%1==%key% echo %errorlevel%>>key.bat
cls
 GOTO :Start