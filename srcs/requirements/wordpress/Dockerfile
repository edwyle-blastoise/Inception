FROM debian:buster
COPY /tools/sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install wget php-fpm php-pdo-mysql php-mbstring php-mysqli curl procps net-tools telnet vim
RUN mkdir /run/php
RUN mkdir -p /var/www/html/
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz && rm -rf latest.tar.gz
COPY /config/wp-config.php /wordpress
COPY /config/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY /tools/script.sh /
RUN chmod +x script.sh
EXPOSE 9000
CMD ["/script.sh"]


