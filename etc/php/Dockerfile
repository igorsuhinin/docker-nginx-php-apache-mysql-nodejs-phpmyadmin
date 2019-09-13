FROM php:7.2-fpm

RUN apt-get update > /dev/null && apt-get install -y \
   git \
   unzip \
   libjpeg-dev \
   libxpm-dev \
   libwebp-dev \
   libfreetype6-dev \
   libjpeg62-turbo-dev \
   libmcrypt-dev \
   libpng-dev \
   zlib1g-dev \
   libicu-dev \
   jpegoptim \
   g++ \
   libxrender1 \
   libfontconfig \
   nano \
   cron \
   acl

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN docker-php-ext-configure intl \
   && docker-php-ext-install intl > /dev/null \
   && docker-php-ext-install zip > /dev/null \
   && docker-php-ext-install bcmath > /dev/null \
   && docker-php-ext-install gd > /dev/null

RUN pecl install mcrypt-1.0.2 \
   && docker-php-ext-enable mcrypt

RUN docker-php-ext-install pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer > /dev/null

RUN usermod -u 1000 www-data

RUN chown -R www-data:1000 /var/www

USER www-data

WORKDIR /var/www