#!/bin/bash

sleep 10

echo "Installing WordPress..."
./wp-cli.phar config create \
	--path=/var/www/wordpress --allow-root \
	--dbname=${SQL_DATABASE} \
	--dbuser=${SQL_USER} \
	--dbpass=${SQL_PASSWORD} \
	--dbhost=${SQL_HOST}

echo "Creating admin..."
./wp-cli.phar core install \
	--path=/var/www/wordpress --allow-root \
	--url=${WP_URL} \
	--title=${WP_TITLE} \
	--admin_user=${WP_ADMIN_USER} \
	--admin_password=${WP_ADMIN_PASSWORD} \
	--admin_email=${WP_ADMIN_EMAIL} \
	--skip-email

echo "Creating user..."
./wp-cli.phar user create \
	--path=/var/www/wordpress --allow-root \
	${WP_USER_LOGIN} ${WP_USER_EMAIL} \
	--user_pass=${WP_USER_PASSWORD}

echo "WordPress installed."
mkdir -p /run/php

echo "Starting PHP FastCGI..."
exec /usr/sbin/php-fpm7.4 -F
