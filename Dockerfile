FROM php:7.4-apache
COPY start-apache /usr/local/bin
RUN a2enmod rewrite
COPY bloom1  /var/www/html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 9000
CMD ["start-apache"]
