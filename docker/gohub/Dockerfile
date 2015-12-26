FROM golang

RUN apt-get update && apt-get install -y git php5-cli php5-mysql

RUN git clone https://github.com/kipelovets/gohub.git /gohub
RUN cd /gohub && go build -v && cp gohub /usr/bin/gohub
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD /usr/bin/gohub --log=- --port=7654 --config=/etc/gohub.json