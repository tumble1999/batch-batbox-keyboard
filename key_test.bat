@echo off
call batbox
set x=0
set y=0
call :draw
:key
batbox
batbox /k
set e=%errorlevel%
for /f "tokens=1" %%a in ('key w') do (
if %e%==%%a (
set /a y=%y%-1
call :draw
)
)

for /f "tokens=1" %%a in ('key a') do (
if %e%==%%a (
set /a x=%x%-1
call :draw
)
)

for /f "tokens=1" %%a in ('key s') do (
if %e%==%%a (
set /a y=%y%+1
call :draw
)
)

for /f "tokens=1" %%a in ('key d') do (
if %e%==%%a (
set /a x=%x%+1
call :draw
)
)
goto key

:draw
cls & color 07
batbox /g 0 0 /c 0x07 /d "X:%x% Y:%y%" 
batbox /g %x% %y% /c 0xce /d "#" /w 100 

::/g %x% %y% /c 0xcc /d "#"
goto :eof