FROM php:8.1.0-apache

WORKDIR /var/www/html

RUN apt-get update -y && apt-get install -y \
    python \
    pip

# Mod Rewrite
#RUN #a2enmod rewrite
RUN pip install codecarbon
RUN codecarbon init && codecarbon monitor & apt-get update -y && apt-get install -y \
    libicu-dev \
    libmariadb-dev \
    unzip zip \
    zlib1g-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev 

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# PHP Extension
RUN docker-php-ext-install gettext intl pdo_mysql gd

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd