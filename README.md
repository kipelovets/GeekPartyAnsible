## docker-machine

docker-machine create --driver virtualbox dev
eval "$(docker-machine env dev)"

## Plan

bitbucket push
webhook -> gohub
git clone & composer & install -> volumes shared dir container
generate nginx config & reload

php-fpms
nginx