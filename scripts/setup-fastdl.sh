#!/bin/bash

echo "[*] updating repos"
apt-get update -y &>> /root/scripts/logs/setup.log

echo "[*] installin nginx"
apt install nginx -y &>> /root/scripts/logs/setup.log
ln -fs /root/data/nginx.conf /etc/nginx/nginx.conf 

echo "[*] preparing root"
ln -fs /root/data/fastdl/maps $SV_DIR/csgo/maps
ln -fs /root/data/fastdl/materials $SV_DIR/csgo/materials
ln -fs /root/data/fastdl/models $SV_DIR/csgo/models
ln -fs /root/data/fastdl/sound $SV_DIR/csgo/sound
ln -fs /root/data/fastdl/maplist.txt $SV_DIR/csgo/maplist.txt

sed -i "s/sv_downloadurl \"\"/sv_downloadurl \"$FASTDL_PROTOCOL\:\/\/$FASTDL_DOMAIN\"/" $SV_DIR/csgo/cfg/server.cfg

echo "[*] launching nginx"
/etc/init.d/nginx stop &>> /root/scripts/logs/setup.log
/etc/init.d/nginx start &>> /root/scripts/logs/setup.log
