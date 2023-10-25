FROM php:8.2-fpm-alpine3.18

RUN docker-php-ext-install pdo pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

COPY ./etc/php/php.ini /usr/local/etc/php/conf.d/php.ini

COPY ./etc/php/entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh

RUN ln -s /usr/local/bin/entrypoint.sh /

WORKDIR /var/www