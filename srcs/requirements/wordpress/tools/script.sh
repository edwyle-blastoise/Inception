#!/bin/bash
mv /wordpress/* /var/www/html/wordpress
rmdir wordpress
mv /config/wp-config.php /var/www/html/wordpress
/usr/sbin/php-fpm7.3 --nodaemonize
# service php7.3-fpm start
# /usr/bin/php7.3