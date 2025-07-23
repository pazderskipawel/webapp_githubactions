#!/bin/sh
# install wp-cl
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp
# Wait for DB to be ready
until echo > /dev/tcp/db/3306; do
  echo "Waiting for database connection..."
  sleep 5
done
# Finish installation of wordpress using cli
su deployuser -c "
cd /var/www/html &&
exec wp core install \
  --url=${WORDPRESS_URL} \
  --title="${WORDPRESS_SITE_TITLE}" \
  --admin_user="${WORDPRESS_ADMIN_USER}" \
  --admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
  --admin_email="${WORDPRESS_ADMIN_EMAIL}" &&
"