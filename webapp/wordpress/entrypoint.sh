#!/bin/sh
chown www-data:www-data /var/www/html/wp-config.php

adduser --disabled-password --gecos '' deployuser

su deployuser -c "
wp core is-installed || wp core install \
  --url=${WORDPRESS_URL} \
  --title="${WORDPRESS_SITE_TITLE}" \
  --admin_user="${WORDPRESS_ADMIN_USER}" \
  --admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
  --admin_email="${WORDPRESS_ADMIN_EMAIL}"
"
exec apache2-foreground
