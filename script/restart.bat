@echo off
IF %ERRORLEVEL% == 0 (
  wsl sudo /etc/init.d/smartdns restart
)^
ELSE echo error:%ERRORLEVEL%
pause
