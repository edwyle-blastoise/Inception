FROM debian:buster
COPY /tools/sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nginx curl procps net-tools telnet vim
RUN /usr/sbin/update-rc.d nginx disable
RUN apt-get install -y openssl
COPY /conf/nginx.conf etc/nginx/sites-available/default
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=SCHOOL21/OU=42moscow/" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;
EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
