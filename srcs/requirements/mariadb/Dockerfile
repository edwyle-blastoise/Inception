FROM debian:buster

COPY /tools/sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y mariadb-server curl procps net-tools telnet vim

ARG DB_ROOT_PASSWORD
ARG DB_USER
ARG DB_PASSWORD
ARG DB_NAME

COPY /conf/my.cnf /root/.my.cnf
RUN mkdir /scripts
COPY /tools/init.sql /scripts/init.sql
RUN chown -R mysql:mysql /scripts

RUN mkdir /run/mysqld
RUN chown mysql:mysql /run/mysqld
EXPOSE 3306

CMD ["/usr/sbin/mysqld","--init-file","/scripts/init.sql"]
