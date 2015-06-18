#!/bin/bash

set -e

(
flock -x -w 10 200 || exit 1

DIR="{{ code_dir }}"
WORKS_DIR="/var/data/{{ domain }}/works"
IMAGES_DIR="/var/data/{{ domain }}/images"
LOGS_DIR="/var/log/{{ domain }}"

if [ "$#" -ne 5 ]; then
    echo "Usage: deploy.sh <git repo> <project> <branch> <type> <commit>"
    exit 1
gi 

REPO=$1
#PROJECT=$2
BRANCH=$3
#TYPE=$4
COMMIT=$5

URL="https://github.com/$REPO"

DATE=`date +"%FT%T"`
TARGET_DIR="$DIR/$DATE-$COMMIT"

git clone -b $BRANCH $URL $TARGET_DIR
LOGS_DIR_LINK="$TARGET_DIR/app/logs"
rm -rf "$TARGET_DIR/.git" $LOGS_DIR_LINK

ln -s $WORKS_DIR "$TARGET_DIR/public_html/works" 
ln -s $IMAGES_DIR "$TARGET_DIR/public_html/images" 
ln -s "$DIR/parameters.yml" "$TARGET_DIR/app/config/parameters.yml"
ln -s $LOGS_DIR $LOGS_DIR_LINK

cd $TARGET_DIR
export HOME=/root
/usr/bin/composer install -o
app/console cache:warmup
app/console assetic:dump --env=prod --no-debug
app/console assets:install --symlink public_html

chown -R www-data:www-data $LOGS_DIR_LINK
chown -R www-data:www-data app/cache

ln -sf "$TARGET_DIR" "$DIR/current" 

) 200>/var/lock/{{ domain }}.lock
