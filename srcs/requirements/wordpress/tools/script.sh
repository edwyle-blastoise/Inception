#!/bin/bash
mv /wordpress/* /var/www/html/wordpress
mv /config/wp-config.php /var/www/html/wordpress/wp-config-sample.php

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html/wordpress/
# wp core download --allow-root
wp core config --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root
wp core install --allow-root --url="eblastoi.42.fr"  --title="Inception" --admin_user="nimda" --admin_password="12345" --admin_email="nimda@mail.ru"
wp user create kuroki kuroki@mail.ru --role=author --user_pass=22222 --user_registered=2021-07-28 --display_name="Kaori Kuroki"

/usr/sbin/php-fpm7.3 --nodaemonize
# service php7.3-fpm start
# /usr/bin/php7.3
