#!/bin/bash

if [ "$1" = "start" ]
then
    pkill screen
    screen -wipe &>> /root/scripts/logs/setup.log
    screen -dmS "$SV_NAME" "/root/scripts/server-bootstrap.sh"
    echo "server started"

elif [ "$1" = "stop" ]
then
    pkill screen
    screen -wipe &>> /root/scripts/logs/setup.log
    echo "server stopped"

elif [ "$1" = "talk" ]
then
    echo "connecting to console"
    screen -r "$SV_NAME"

else
    echo "incorrect option! use one of these"
    echo "server-bootstrap.sh start/stop/talk"
fi