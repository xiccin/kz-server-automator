#!/bin/bash

dpkg --add-architecture i386 &>> /root/scripts/logs/setup.log

echo -e "[*] updating repos"
apt-get update -y &>> /root/scripts/logs/setup.log

echo -e "[*] updating packages"
apt-get upgrade -y &>> /root/scripts/logs/setup.log

echo -e "[*] installing tools and deps"
apt-get install locales procps vim ack screen net-tools file wget curl tar p7zip-full bzip2 rsync -y &>> /root/scripts/logs/setup.log
apt-get install libstdc++6:i386 libgcc1:i386 libc6:i386 libstdc++6:i386 zlib1g:i386 libncurses5:i386 libstdc++6 libgcc1 libc6 libstdc++6 zlib1g libncurses5 -y &>>/root/scripts/logs/setup.log
localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 &>> /root/scripts/logs/setup.log