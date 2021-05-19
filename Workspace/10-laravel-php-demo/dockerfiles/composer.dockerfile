# official image in docker hub
FROM composer

WORKDIR /var/www/html

# this "composer" executable exists in the base image 'composer'
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]