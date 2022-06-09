#!/bin/bash

mkdir /root/steamcmd &>>/root/scripts/logs/setup.log
mkdir $SV_DIR &>>/root/scripts/logs/setup.log


echo -e "[*] downloading steamcmd"
cd /root/steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
    -O steamcmd.tar.gz &>>/root/scripts/logs/setup.log


echo -e "[*] preparing files"
tar -xzvf steamcmd.tar.gz &>>/root/scripts/logs/setup.log

