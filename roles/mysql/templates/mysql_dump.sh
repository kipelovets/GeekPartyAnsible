#!/bin/bash

USER={{ mysql_db_password }}
PASSWORD={{ mysql_db_password }}
BACKUP_PATH="{{ backup_dir }}"
DATE=$(date +"%Y-%m-%d")

mysqldump --user=$USER --password=$PASSWORD --all-databases > $BACKUP_PATH/mysqldump-$DATE.sql 
