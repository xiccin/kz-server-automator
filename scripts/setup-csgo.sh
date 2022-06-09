#!/bin/bash

echo -e "[*] updating steamcmd and csgo-ds"

cd /root/steamcmd
./steamcmd.sh +force_install_dir $SV_DIR \
    +login anonymous \
    +app_update 740 validate \
    +quit &>> /root/scripts/logs/setup.log

rm -rf $SV_DIR/csgo/maps \
    $SV_DIR/csgo/materials \
    $SV_DIR/csgo/models \
    $SV_DIR/csgo/sound 


echo -e "[*] preparing user data"

ln -fs /root/data/fastdl/maps $SV_DIR/csgo/maps
ln -fs /root/data/fastdl/materials $SV_DIR/csgo/materials
ln -fs /root/data/fastdl/models $SV_DIR/csgo/models
ln -fs /root/data/fastdl/sound $SV_DIR/csgo/sound

ls -1 /root/data/fastdl/maps | ack "bsp$" | sed "s/\.bsp//" > $SV_DIR/csgo/maplist.txt
ln -fs $SV_DIR/csgo/maplist.txt $SV_DIR/csgo/mapcycle.txt

ln -fs /root/data/srcds_run $SV_DIR/srcds_run

cp /root/data/csgo/cfg/server.cfg $SV_DIR/csgo/cfg/server.cfg
sed -i "s/sv_setsteamaccount \"\"/sv_setsteamaccount \"$SV_GSLT\"/" $SV_DIR/csgo/cfg/server.cfg
sed -i "s/hostname \"\"/hostname \"$SV_HOSTNAME\"/" $SV_DIR/csgo/cfg/server.cfg
sed -i "s/sv_tags \"\"/sv_tags \"$SV_TAGS\"/" $SV_DIR/csgo/cfg/server.cfg
