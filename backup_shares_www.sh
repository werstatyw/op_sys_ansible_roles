#!/bin/bash
DATE=$(date +%d-%m-%Y)
BACKUP_DIR="/root/backup"
 
# take each website's backup in separate name, use below format #
tar -zcvpf $BACKUP_DIR/site_backup-$DATE.tar.gz /var/www/html
tar -zcvpf $BACKUP_DIR/shares_backup-$DATE.tar.gz /srv/shares/
 
# Delete files older than 10 days #
find $BACKUP_DIR/* -mtime +10 -exec rm {} \;