@echo off
title Installing...
echo 0%%-Detect Node.js...
set nodever=0
FOR /F %%F IN ('node.exe --version') DO set nodever=%%F
if %nodever%==0 echo Node.js is not found. Install or add it into path to continue.&pause>nul&exit /b
if %nodever:~0,2%==v1 echo Node.js %nodever% seems out dated, suggest to update it to v20 or later. Install can be continued, but cannot ensure it works.
echo 10%%-Install required packages...
call npm install
echo 70%%-Detect local application compatibility...
curl http://localhost:80 -s >nul
if %ERRORLEVEL%==0 echo Port 80 is used by some application, stop that or this tool won't work!
echo Ready!
pause >nul