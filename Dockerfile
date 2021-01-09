FROM php:7-apache

# Install required libraries
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libzip-dev \
        zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql \
    && docker-php-ext-install zip

# Download the source code
ADD https://www.concrete5.org/download_file/-/view/113632/ /var/www/html/

# Extract the source code and clean up
RUN cd /var/www/html \
    && unzip concrete5-8.5.4.zip \
    && mv concrete5-8.5.4/* . \
    && rm -rf concrete5-8.5.4 \
    && rm concrete5-8.5.4.zip \
    && chown -R www-data:www-data /var/www/html/

EXPOSE 80
