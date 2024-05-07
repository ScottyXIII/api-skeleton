#!/bin/sh

composer install
exec docker-php-entrypoint "$@"