#!/bin/bash

set -e
set -x

(
flock -x -w 10 200 || exit 1

DIR="{{ code_dir }}"
WORKS_DIR="/var/data/{{ domain }}/works"
IMAGES_DIR="/var/data/{{ domain }}/images"
LOGS_DIR="/var/log/{{ domain }}"

REPO="{{ repo_name }}" 
BRANCH="{{ branch }}"

if [ "$#" -ne 5 ]; then
echo "Usage: deploy.sh <repo> <branch> <commit>"
COMMIT="manual"
else
COMMIT=$3
fi 

URL="https://github.com/$REPO"

DATE=`date +"%FT%T"`
TARGET_DIR="$DIR/version-$DATE-$COMMIT"

git clone -b $BRANCH $URL $TARGET_DIR
LOGS_DIR_LINK="$TARGET_DIR/app/logs"
CACHE_DIR_LINK="$TARGET_DIR/app/cache"
rm -rf "$TARGET_DIR/.git" $LOGS_DIR_LINK

ln -sfn $WORKS_DIR "$TARGET_DIR/public_html/works"
ln -sfn $IMAGES_DIR "$TARGET_DIR/public_html/images"
ln -sfn "$DIR/parameters.yml" "$TARGET_DIR/app/config/parameters.yml"
ln -sfn $LOGS_DIR $LOGS_DIR_LINK

cd $TARGET_DIR
export HOME=/root
/usr/bin/composer install -o --no-dev --ansi -n
app/console cache:warmup --env=prod
app/console assets:install --env=prod --symlink public_html
app/console assetic:dump --env=prod --no-debug public_html
app/console doctrine:migrations:migrate --env=prod

chown -RH www-data:www-data $LOGS_DIR_LINK
chown -RH www-data:www-data $CACHE_DIR_LINK

ln -sfn "$TARGET_DIR" "$DIR/current"

cd ..
ls -td version* | tail -n +4 | xargs rm -rf --

) 200>/var/lock/{{ domain }}.lock
