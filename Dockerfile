FROM composer:latest

MAINTAINER <jamesqin@vip.qq.com>

RUN apk update \
	&& apk add libpng-dev \
	&& apk add libjpeg \
	&& docker-php-ext-install gd \
	&& rm -rf /var/cache/apk/*
