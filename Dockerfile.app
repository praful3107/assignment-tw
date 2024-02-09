# Pull base image
FROM php:8.0-apache
# Define work directory
WORKDIR /var/www/html
# Copy required files in work directory i.e. apache document root
COPY . .
# Install PHP extensions whic is required for DB connectivity
RUN docker-php-ext-install pdo pdo_mysql
# Expose the port that apache listens on
EXPOSE 80
