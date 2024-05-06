FROM php:8.1-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY --from=composer:2.7 /usr/bin/composer /usr/bin/composer

COPY ./app/composer.* ./

RUN mkdir -p /var/www/html/var/cache/dev /var/www/html/var/log \
    chmod -R 777 /var \
    composer install --prefer-dist --no-scripts --no-progress --no-interaction

COPY ./app .

RUN composer dump-autoload --optimize

