FROM php:8.2-fpm

RUN apt-get update && apt-get install -y libpq-dev

RUN docker-php-ext-configure pgsql \
    && docker-php-ext-install pgsql pdo_pgsql pdo \
    pecl install redis && docker-php-ext-enable redis

WORKDIR /var/www

COPY . /var/www

RUN chmod -R 777 /var/www

RUN php artisan storage:link

EXPOSE 9000

CMD ["php-fpm"]

