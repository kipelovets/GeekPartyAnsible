#!/usr/bin/env sh

sed -e "s/DB_PORT_3306_TCP_ADDR/$DB_PORT_3306_TCP_ADDR/" \
    -e "s/FB_APP_ID/$FB_APP_ID/" \
    -e "s/FB_SECRET/$FB_SECRET/" \
    -e "s/VK_APP_ID/$VK_APP_ID/" \
    -e "s/VK_APP_SECRET/$VK_APP_SECRET/" \
    -e "s/DISQUS_SHORTNAME/$DISQUS_SHORTNAME/" \
    -e "s/ADMIN_EMAIL/$ADMIN_EMAIL/" \
    -e "s/MYSQL_DATABASE/$MYSQL_DATABASE/" \
    -e "s/MYSQL_USER/$MYSQL_USER/" \
    -e "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/" \
    /var/data/parameters.yml.tpl > /var/data/code/parameters.yml