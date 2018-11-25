#!/bin/sh

sysrc -f /etc/rc.conf jdownloader_enable="YES"

if [ ! -d "/usr/local/jdownloader" ] ; then
  mkdir -p /usr/local/jdownloader
fi

cd /usr/local/jdownloader

wget http://installer.jdownloader.org/JDownloader.jar

java -Djava.awt.headless=true -jar JDownloader.jar -norestart
