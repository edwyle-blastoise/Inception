FROM debian:buster

RUN touch itsmycontainer

COPY /tools/sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install wget php-fpm php-pdo-mysql php-mbstring php-mysqli curl procps net-tools telnet vim

# ARG DB_USER
# ARG DB_PASSWORD
# ARG DB_NAME
# ARG DB_HOST

RUN mkdir /run/php
RUN mkdir -p /var/www/html
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz && rm -rf latest.tar.gz
# RUN mv /wordpress/ /var/www/html/
# COPY /config/wp-config.php /var/www/html/wordpress/

COPY /config/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY /tools/script.sh /
RUN chown -R www-data:www-data var/www/html/
RUN chmod -R 777 /var/www/html/
# RUN chmod -R 777 /etc/php/7.3/fpm/*
RUN chmod +x script.sh
EXPOSE 9000
CMD ["/script.sh"]

# CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
