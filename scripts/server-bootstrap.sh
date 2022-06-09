#!/bin/bash

cd $SV_DIR
./srcds_run -game csgo \
    +ip 0.0.0.0 \
    -port $SV_PORT \
    -console \
    -tickrate 128 \
    -maxplayers_override $SV_MAXPLAYERS \
    -net_port_try 1 \
    +sv_hibernate_when_empty 0 \
    +map $SV_DEFAULTMAP
    