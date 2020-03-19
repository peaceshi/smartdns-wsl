@echo off
IF %ERRORLEVEL% == 0 (
  wsl sudo /etc/init.d/smartdns stop
)
ELSE echo error:%ERRORLEVEL%
pause