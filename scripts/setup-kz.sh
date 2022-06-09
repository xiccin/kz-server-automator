#!/bin/bash

echo -e "[*] linking data files"

rm -rf $SV_DIR/csgo/addons
ln -fs /root/data/csgo/addons $SV_DIR/csgo/addons

rm -rf $SV_DIR/csgo/cfg/sourcemod
ln -fs /root/data/csgo/cfg/sourcemod $SV_DIR/csgo/cfg/sourcemod

echo -e "[*] adding globaapi key"
echo "$GLOBALAPI_KEY" > $SV_DIR/csgo/cfg/sourcemod/globalapi-key.cfg
