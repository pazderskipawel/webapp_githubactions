#!/bin/bash
su deployuser
cd /var/www/html
# install wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp
# Wait for DB to be ready
until echo > /dev/tcp/db/3306; do
  echo "Waiting for database connection..."
  sleep 5
done
