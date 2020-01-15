ARG PHP_TAG="7.4.1-fpm-alpine3.11"
FROM php:${PHP_TAG} as php-fpm

ARG APP_GROUP_ID=2001
ARG APP_GROUP_NAME="app"

RUN addgroup -g ${APP_GROUP_ID} -S "${APP_GROUP_NAME}"

COPY docker/php-fpm/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY docker/php-fpm/php-fpm.d /usr/local/etc/php-fpm.d
