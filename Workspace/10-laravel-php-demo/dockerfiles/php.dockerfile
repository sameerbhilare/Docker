FROM php:7.4-fpm-alpine

# standard folder on web servers to serve your website from
WORKDIR /var/www/html

# docker-php-ext-install tool is available in above base image php:7.4-fpm-alpine
RUN docker-php-ext-install pdo pdo_mysql

# We dont have any CMD instruction here.
# If you don't have a command or entry point at the end, then the command or entry point of the base image will be used if it has any.
# The php base image will have a default command which is executed that invokes the PHP interpreter.