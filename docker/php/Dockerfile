FROM php:8.1-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY --from=composer:2.7 /usr/bin/composer /usr/bin/composer

COPY ./app/composer.* ./

WORKDIR /var/www/html

RUN composer install --prefer-dist --no-dev --no-scripts --no-progress --no-interaction;

COPY ./app .

RUN composer dump-autoload --optimize

COPY docker/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]
CMD ["php-fpm"]
