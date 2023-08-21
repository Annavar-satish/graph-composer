#Get Composer
FROM composer:2.0 as vendor

WORKDIR /app

# COPY composer.json composer.json

COPY . .
RUN composer install \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --no-dev \
    --prefer-dist

RUN composer dump-autoload
