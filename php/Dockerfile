FROM php:8.1-fpm

RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer

# xhProf
RUN apt-get update && apt-get install -y --no-install-recommends libicu-dev git unzip zlib1g-dev libzip-dev libonig-dev libgmp-dev graphviz

WORKDIR /root/
RUN git clone https://github.com/tideways/php-profiler-extension.git
WORKDIR /root/php-profiler-extension
RUN phpize
RUN ./configure
RUN make
RUN make install
RUN echo 'extension=tideways_xhprof.so' >> /usr/local/etc/php/conf.d/tideways.ini
RUN echo 'tideways.auto_prepend_library=0' >> /usr/local/etc/php/conf.d/tideways.ini

RUN mkdir /tmp/xhprof
RUN chmod 777 /tmp/xhprof/

# vim
RUN apt-get install -y vim

# RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
#RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
#COPY ./composer.json /var/www/html
#COPY ./composer.lock /var/www/html
#COPY ./php.ini /usr/local/etc/php/conf.d/php.ini

WORKDIR /var/www/html

#RUN composer install --no-dev

COPY . /var/www/html
