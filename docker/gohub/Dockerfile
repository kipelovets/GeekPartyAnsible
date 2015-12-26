FROM debian:jessie

RUN apt-get install -y docker.io

ADD gohub /usr/bin/gohub
ADD gohub.json /etc/gohub.json
ADD deploy.sh /usr/bin/deploy.sh

CMD /usr/bin/gohub --log=/var/log/gohub.log --port=7654 --config=/etc/gohub.json