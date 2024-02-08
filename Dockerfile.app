FROM php8.0-apache
WORKDIR /var/www/html
COPY index.php index.php
COPY src/ src
EXPOSE 80
CMD["apache2-foreground"]
