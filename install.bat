@echo off

set "CURR_PATH=%~dp0"
set "STARTUP_PATH=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\StartUp"
FOR /F %%i IN ('wsl pwd') DO @set DIR_IN_WSL=%%i

wsl -d ubuntu sudo %DIR_IN_WSL%/../../install -i
IF NOT %ERRORLEVEL% == 0 (
  echo Install smartdns failed.
  pause
  exit 1
)

copy %CURR_PATH%\wsl-run.cmd "%STARTUP_PATH%/"
IF NOT %ERRORLEVEL% == 0 (
  echo Install startup script failed.
  echo Check your antivirus software.
  pause
  exit 1
)

echo Install smartdns success
pause
