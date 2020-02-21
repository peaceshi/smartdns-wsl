@echo off
bash ./gfwlist2dnsmasq.sh -o ./gfwlist.conf 
wsl mv ./*.conf ../../../etc/smartdns/gfwlist.conf
pause
