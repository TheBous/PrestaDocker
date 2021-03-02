FROM php:8.0.2-apache

RUN apt-get update
RUN apt-get install -y libzip-dev zip && docker-php-ext-install zip
RUN apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apt-get install -y libicu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl

CMD php -S 0.0.0.0:8000 -t . 