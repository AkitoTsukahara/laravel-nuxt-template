FROM php:8.0-fpm-alpine
# timezone
ARG TZ

COPY ./docker/php/php.ini /usr/local/etc/php/
COPY ./backend/ /var/www/backend/

WORKDIR /var/www/backend

# install Lib
RUN apk update && \
    apk add --no-cache --virtual .php-builds oniguruma-dev postgresql-dev git curl zip unzip

# add php,apache-module
RUN docker-php-ext-install pdo_mysql mysqli mbstring && \
    docker-php-ext-enable mbstring

# install Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer
