FROM php:8.0-apache

# Copy project files
COPY . /var/www/html/

# Enable apache rewrite module
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN a2enmod rewrite
