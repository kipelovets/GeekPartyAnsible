#!/bin/bash

USER={{ mysql_db_user }}
PASSWORD={{ mysql_db_password }}
BACKUP_PATH="{{ backup_dir }}"
DATE=$(date +"%Y-%m-%d")
TARGET_FILE=$BACKUP_PATH/mysqldump-$DATE.sql

echo "Writing dump to $TARGET_FILE\n"
mysqldump --user=$USER --password=$PASSWORD --all-databases > "$TARGET_FILE" 
gzip -v -f $TARGET_FILE
