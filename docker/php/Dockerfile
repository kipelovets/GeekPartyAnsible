FROM php:fpm

RUN usermod -u 1000 www-data

RUN apt-get update && apt-get install -y \
    && docker-php-ext-install pdo pdo_mysql

CMD ["php-fpm", "-F"]

EXPOSE 9000