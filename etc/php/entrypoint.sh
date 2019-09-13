#!/bin/sh
echo ' START PHP POST INSTALL SCRIPTS'

setfacl -dm u:www-data:rwX /var/www

composer install

echo ' END PHP POST INSTALL SCRIPTS'

docker-php-entrypoint $@