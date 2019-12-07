@echo off

FOR /F %%i IN ('wsl pwd') DO @set DIR_IN_WSL=%%i

wsl -d ubuntu sudo cp -avf %DIR_IN_WSL%/../../etc/smartdns/* /etc/smartdns/ 
IF NOT %ERRORLEVEL% == 0 (
  echo copy smartdns configuration file failed.
  pause
  exit 1
)

wsl -d ubuntu sudo /etc/init.d/smartdns restart
IF NOT %ERRORLEVEL% == 0 (
  echo reload smartdns failed.
  echo check your smartdns log for more info.
  pause
  exit 1
)

echo reload smartdns success
pause
