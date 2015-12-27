#!/usr/bin/env bash

cd /var/data/code
if [ ! -d current ]; then
    ls -td version* | tail -n 1 | xargs -I % ln -sfn % current
fi

cd current
app/console doctrine:schema:create -n
app/console doctrine:migrations:version --all --add