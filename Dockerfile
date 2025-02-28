FROM php:8.2-fpm-alpine

WORKDIR /var/www/app

RUN apk update

RUN apk --no-cache add \
    git \
    nginx \
    supervisor \
    curl \
    oniguruma-dev \
    && rm -rf /var/cache/apk/*

RUN docker-php-ext-install pdo pdo_mysql -j$(nproc) mbstring \
    && docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . ./
COPY ./.docker/fastcgi-php.conf /etc/nginx/snippets/fastcgi-php.conf
COPY ./.docker/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf
COPY ./.docker/nginx.conf /etc/nginx/nginx.conf
COPY ./.docker/nginx-server-block.conf /etc/nginx/conf.d/default.conf
COPY ./.docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN chown -R www-data:www-data ./
RUN chmod -R 775 ./

RUN composer clearcache
RUN composer install --no-interaction # --no-dev

RUN php artisan passport:keys

RUN chown -R www-data:www-data ./storage
RUN chmod -R 775 ./storage

EXPOSE 80

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
