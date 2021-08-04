#!/bin/bash
mv /wordpress/* /var/www/html/wordpress
rm /var/www/html/wordpress/wp-config-sample.php
rm -R wordpress
chown -R www-data:www-data var/www/html/wordpress
chmod -R 777 /var/www/html/wordpress
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html/wordpress
# wp core config --dbhost=db --dbname=$DB_NAME --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root //создание wp-config.php
wp core install --allow-root --url="$DB_URL"  --title="Eblastoi's Inception" --admin_user="$DB_USER" --admin_password="$DB_PASSWORD" --admin_email="$ADMIN_MAIL"
wp user create --allow-root $USER_NAME $USER_MAIL --role=author --user_pass=$USER_PASS

/usr/sbin/php-fpm7.3 --nodaemonize
