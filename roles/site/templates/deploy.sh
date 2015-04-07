#!/bin/bash

set -e

(
flock -x -w 10 200 || exit 1

DIR="{{ code_dir }}"
WORKS_DIR="/var/data/{{ domain }}/works"
IMAGES_DIR="/var/data/{{ domain }}/images"

if [ "$#" -ne 5 ]; then
    echo "Illegal number of parameters"
fi

REPO=$1
#PROJECT=$2
BRANCH=$3
#TYPE=$4
COMMIT=$5

URL="https://github.com/${1}"

DATE=`date +"%FT%T"`
TARGET_DIR="$DIR/$DATE-$COMMIT"

git clone -b $BRANCH $URL $TARGET_DIR
rm -rf "$TARGET_DIR/.git"

WORK_DIR_LINK="$TARGET_DIR/public_html/works"
IMAGES_DIR_LINK="$TARGET_DIR/public_html/images"
ln -s $WORKS_DIR $WORK_DIR_LINK 
ln -s $IMAGES_DIR $IMAGES_DIR_LINK 
ln -s "$DIR/parameters.yml" "$TARGET_DIR/app/config/parameters.yml"

cd $TARGET_DIR
/usr/bin/composer install -o
app/console cache:warmup

ln -fs "$TARGET_DIR" "$DIR/current" 

) 200>/var/lock/{{ domain }}.lock
