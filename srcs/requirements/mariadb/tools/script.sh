service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS '$DB_NAME';"
mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root -e "GRANT ALL ON '$DB_NAME'.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $DB_ROOT_PASSWORD;
service mysql stop
/usr/sbin/mysqld