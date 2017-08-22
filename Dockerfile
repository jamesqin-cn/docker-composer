FROM composer:latest

MAINTAINER <jamesqin@vip.qq.com>

RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories \
	&& apk update \
	&& apk add libpng-dev \
	&& apk add libjpeg \
	&& docker-php-ext-install gd \
	&& rm -rf /var/cache/apk/*
