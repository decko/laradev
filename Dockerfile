FROM alpine:edge

ADD https://php.codecasts.rocks/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub

RUN apk --update add ca-certificates

RUN echo "@php https://php.codecasts.rocks/v3.7/php-7.2" >> /etc/apk/repositories

RUN apk add --update php7@php php7-json@php php7-openssl@php php7-phar@php php7-zip@php php7-mbstring@php php7-dom@php composer@php
RUN ln -s /usr/bin/php7 /usr/bin/php

RUN adduser -Ds /bin/bash laravel

USER laravel
RUN mkdir -p /home/laravel/workdir

RUN composer global require "laravel/installer"
ENV PATH="/home/laravel/.composer/vendor/bin:${PATH}"

WORKDIR /home/laravel/workdir
VOLUME /home/laravel/workdir
EXPOSE 8000
