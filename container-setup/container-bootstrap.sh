#!/bin/bash

export \
csgo_gslt="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" \
domain="localhost" \
name="kz-sv" \
protocol="http" \
csgo_port="27015" \
csgo_hostname="KZ Community | Under Development" \
csgo_tags="gokz,global,free,kreedz" \
globalapi_key="4544xxxx-xxxx-xxxx-xxxx-xxxxf14161d2" \
max_players="16" \
default_map="kz_rectangle" 

if [ "$1" = "background" ]
then
    docker-compose start --no-recreate
    echo "[*] running in background"

elif [ "$1" = "console" ]
then
    echo "[*] starting docker container"
    docker-compose up --no-recreate
        
elif [ "$1" = "stop" ]
then
    echo "[*] stopping docker container"
    docker-compose stop  

elif [ "$1" = "purge" ]
then
    echo "[*] removing docker container"
    docker-compose rm -f

elif [ "$1" = "recreate-background" ]
then
    echo "[*] removing exisiting container"
    docker-compose rm -f
    echo "[*] starting new docker container"
    docker-compose start --force-recreate
    echo "talking to console"

elif [ "$1" = "recreate-console" ]
then
    echo "[*] removing exisiting container"
    docker-compose rm -f
    echo "[*] starting new docker container"
    docker-compose up --force-recreate
    echo "talking to console"

elif [ "$1" = "help" ]
then
    echo -e "[*] Usage: ./container-bootstrap.sh <command> \n[*]"
    echo -e "[*] List of commands:"
    echo -e "[*] background\t\t: start a container in a background"
    echo -e "[*] console\t\t: start a container with terminal attached"
    echo -e "[*] stop\t\t: stop running container"
    echo -e "[*] purge\t\t: remove the container"
    echo -e "[*] recreate-background\t: re-create container from scratch in background"
    echo -e "[*] recreate-console\t: re-create container from scratch and attach to terminal"

else
    echo "[*] incorrect option!"
    echo "[*] use: ./container-bootstrap.sh help"
fi
