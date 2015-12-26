#!/bin/bash

set -e
set -x

DOMAIN="gamedevparty.ru" #{{ domain }}

DIR="/var/data/code" #"{{ code_dir }}"
WORKS_DIR="/var/data/$DOMAIN/works"
IMAGES_DIR="/var/data/$DOMAIN/images"
LOGS_DIR="/var/log/$DOMAIN"

if [ ! -d "$LOGS_DIR" ]; then
    mkdir "$LOGS_DIR"
fi

REPO="GeekPartyTeam/GeekParty-Site" #"{{ repo_name }}"
BRANCH="master" #"{{ branch }}"

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