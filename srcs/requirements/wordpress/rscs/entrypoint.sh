#!/bin/sh

envsubst < /rscs/wp-config.php.template > /var/www/html/wordpress/wp-config.php
chown -R www-data:www-data /var/www/html/wordpress/wp-config.php
exec php-fpm8.2 -F