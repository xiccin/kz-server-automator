#!/bin/bash

echo -e "[*] linking data files"
rm -rf $SV_DIR/csgo/addons
ln -fs /root/data/csgo/addons $SV_DIR/csgo/addons
rm -rf $SV_DIR/csgo/cfg/sourcemod
ln -fs /root/data/csgo/cfg/sourcemod $SV_DIR/csgo/cfg/sourcemod

echo -e "[*] upgrading gokz"
wget "https://bitbucket.org/kztimerglobalteam/gokz/downloads/GOKZ-latest-upgrade.zip" \
    -O /tmp/gokz-latest.zip &>> /root/scripts/logs/setup.log
7z x /tmp/gokz-latest.zip -o/root/$SV_DIR/csgo -aoa &>> /root/scripts/logs/setup.log

echo -e "[*] adding globa-api key"
echo "$GLOBALAPI_KEY" > $SV_DIR/csgo/cfg/sourcemod/globalapi-key.cfg
