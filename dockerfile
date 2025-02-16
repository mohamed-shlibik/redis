# Use the official PHP image with Apache
FROM php:8.1-apache

# Set the document root to the public directory
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# Enable Apache mod_rewrite for PHP frameworks
RUN a2enmod rewrite

# Copy source code to the container
COPY ./src /var/www/html

# Set the correct permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80
EXPOSE 80
