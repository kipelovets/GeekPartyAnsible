FROM debian:jessie

RUN apt-get update -y && apt-get install -y git curl php5 php5-curl
RUN mkdir -p /var/www/app && git clone https://github.com/GeekPartyTeam/GeekParty-Site.git /var/www/app
RUN cd /var/www/app ; curl -sS https://getcomposer.org/installer | php
RUN cd /var/www/app ; php composer.phar install

VOLUME /var/www/app
WORKDIR /var/www/app

CMD ["/bin/bash"]