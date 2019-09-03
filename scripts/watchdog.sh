#!/bin/bash

LOG=$HOME/log.out 

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>$LOG 2>&1

WEB=https://twaclaw.github.io/malaga/ 

# dd/mm/yy
webdate=$(curl -s $WEB |grep lastupdate |grep -Eo '[0-9]{2}/[0-9]{2}/[0-9]{2}')
WEB_DAY=$(echo $webdate | cut -d '/' -f 1 )
CURRENT_DAY=$(date '+%d')

if [ "$WEB_DAY" -ne "$CURRENT_DAY" ]
then
    echo "$(date) Date mistmatch, current day: $CURRENT_DAY, web day: $WEB_DAY. Dumping console data and clearing memory"
    sudo /etc/init.d/weewx stop
    yes y | wee_device --dump
    yes y | wee_device --clear-memory
    sudo /etc/init.d/weewx start
fi
exit 0
