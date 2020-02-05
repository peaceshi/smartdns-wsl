wsl wget -c https://cdn.jsdelivr.net/gh/privacy-protection-tools/anti-AD@master/adblock-for-dnsmasq.conf
wsl sed -i 's/$/#/g' ./*.conf
wsl sed -i 's/=/ /g' ./*.conf
wsl mv ./*.conf ../../../etc/smartdns/