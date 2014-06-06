#!/bin/bash

TIME=$(date +"%Y-%m-%d.%H")
HOUR=$(date +"%H")

DEST="/home/minecraft/mnt/backup/freakcraft-backups"
SRCWORLD="/home/minecraft/freakcraft/ftbserver/world"
SRCFULL="/home/minecraft/freakcraft/ftbserver/"
TDESTWORLD="/home/minecraft/freakcraft/ftbserver/temp"
TDESTFULL="/home/minecraft/freakcraft/temp"

screen -S minecraft -X stuff "say Performing save/backup operations there may be lag...$(printf '\r')"
screen -S minecraft -X stuff "save-off $(printf '\r')"
screen -S minecraft -X stuff "save-all $(printf '\r')"

sleep 3

cd $DEST

rm -f freakcraft.tar.gz.24

mv freakcraft-hour23.tar.gz freakcraft-hour24.tar.gz
mv freakcraft-hour22.tar.gz freakcraft-hour23.tar.gz
mv freakcraft-hour21.tar.gz freakcraft-hour22.tar.gz
mv freakcraft-hour20.tar.gz freakcraft-hour21.tar.gz
mv freakcraft-hour19.tar.gz freakcraft-hour20.tar.gz
mv freakcraft-hour18.tar.gz freakcraft-hour19.tar.gz
mv freakcraft-hour17.tar.gz freakcraft-hour18.tar.gz
mv freakcraft-hour16.tar.gz freakcraft-hour17.tar.gz
mv freakcraft-hour15.tar.gz freakcraft-hour16.tar.gz
mv freakcraft-hour14.tar.gz freakcraft-hour15.tar.gz
mv freakcraft-hour13.tar.gz freakcraft-hour14.tar.gz
mv freakcraft-hour12.tar.gz freakcraft-hour13.tar.gz
mv freakcraft-hour11.tar.gz freakcraft-hour12.tar.gz
mv freakcraft-hour10.tar.gz freakcraft-hour11.tar.gz
mv freakcraft-hour9.tar.gz freakcraft-hour10.tar.gz
mv freakcraft-hour8.tar.gz freakcraft-hour9.tar.gz
mv freakcraft-hour7.tar.gz freakcraft-hour8.tar.gz
mv freakcraft-hour6.tar.gz freakcraft-hour7.tar.gz
mv freakcraft-hour5.tar.gz freakcraft-hour6.tar.gz
mv freakcraft-hour4.tar.gz freakcraft-hour5.tar.gz
mv freakcraft-hour3.tar.gz freakcraft-hour4.tar.gz
mv freakcraft-hour2.tar.gz freakcraft-hour3.tar.gz
mv freakcraft-hour1.tar.gz freakcraft-hour2.tar.gz
mv freakcraft-hour0.tar.gz freakcraft-hour1.tar.gz

cd /home/minecraft/freakcraft

tar -cpvzf /home/minecraft/mnt/backup/freakcraft-backups/freakcraft-hour0.tar.gz ftbserver

screen -S -X stuff "save-on $(printf '\r')"
screen -S -X stuff "say Save/backup operations complete. $(printf '\r')"
