FROM php:8.4-fpm

COPY ./php.ini /usr/local/etc/php/conf.d/my-php.ini
RUN rm -f /usr/local/etc/php-fpm.d/*
COPY ./php-fpm.conf /usr/local/etc/php-fpm.d/my-php-fpm.conf

RUN apt-get update && apt-get install -y \
   mariadb-client \
   vim \
   zip \
   unzip \
   iputils-ping \
   libpng-dev \
   libpq-dev \
   git 

RUN git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis 

RUN docker-php-ext-install pdo_mysql mysqli redis

RUN apt-get install -y zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev libwebp-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install gd

WORKDIR /var/www/

EXPOSE 9000