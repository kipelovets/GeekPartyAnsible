#!/bin/bash

USER=root
PASSWORD=k3p7j1h7ZpRC
DB=geekparty
BACKUP_PATH="/var/backups"
DATE=$(date +"%d-%b-%Y")

mysqldump --user=$USER --password=$PASSWORD $DB > $BACKUP_PATH/$DB-$DATE.sql 
