#!/bin/bash

clear
echo -e ""
echo -e "[+] -------------------------------"
echo -e "[+] to view a detailed log on host:"
echo -e "[+] tail -f scripts/logs/setup.log"
echo -e "[+] "
echo -e "[+] to view the same in container:"
echo -e "[+] docker exec -it $SV_NAME tail -f /root/scripts/logs/setup.log"
echo -e "[+] -------------------------------"
echo -e "\n"

echo -e "[+] Environment Setup"
echo -e "[*]"
/root/scripts/setup-env.sh 
echo -e "\n"

echo -e "[+] SteamCMD Setup"
echo -e "[*]"
/root/scripts/setup-steamcmd.sh 
echo -e "\n"

echo -e "[+] CSGO Server Setup"
echo -e "[*]"
/root/scripts/setup-csgo.sh 
echo -e "\n"

echo -e "[+] GOKZ Setup"
echo -e "[*]"
/root/scripts/setup-kz.sh
echo -e "\n"

echo -e "[+] FastDL Setup"
echo -e "[*]"
/root/scripts/setup-fastdl.sh 
echo -e "\n"

echo -e "[+] -------------------------------"
echo -e "[+] Setup Complete"
echo -e "[+]"
echo -e "[+] deploying server"
pkill screen
screen -dmS "$SV_NAME" "/root/scripts/server-bootstrap.sh"
echo -e "[+]"
echo -e "[+] public ip: $(curl -sL icanhazip.com)"
echo -e "[+] private ip: $(ip route get 1 | sed -n 's/^.*src \([0-9.]*\) .*$/\1/p')"
echo -e "[+] connect on port: $SV_PORT"
echo -e "[+]"
echo -e "[+] to access server console:"
echo -e "[+] docker exec -it $SV_NAME server-console.sh <command>"
echo -e "[+] possible commands: start, stop, talk"
echo -e "[+]"
echo -e "[+] to access container shell:"
echo -e "[+] docker exec -it $SV_NAME bash"
echo -e "[+]"
echo -e "[+] server launcher location: /root/scripts/server-bootstrap.sh"
echo -e "[+] -------------------------------"