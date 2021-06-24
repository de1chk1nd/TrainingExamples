FROM php:7.4-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Copy application source
COPY src /var/www/
RUN chown -R www-data:www-data /var/www