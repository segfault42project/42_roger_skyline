#!/bin/bash

value1="$(md5sum /var/spool/cron/crontabs/root.backup | cut -d' ' -f1)"
value2="$(md5sum /var/spool/cron/crontabs/root | cut -d' ' -f1)"

if [ "$value1" != "$value2" ]; then
	ssmtp ramzi90000@gmail.com < mail
fi

cp /var/spool/cron/crontabs/root /var/spool/cron/crontabs/root.backup

#crontab -e
# ajouter a la fin : 00 00 * * * /root/Documents/42_roger_skyline/Scripting/04.sh
