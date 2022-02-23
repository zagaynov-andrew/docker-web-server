#!/bin/bash

# replacing the nginx config file
rm /etc/nginx/sites-available/default
mv etc/default etc/nginx/sites-available/default

mv phpMyAdmin-5.1.0-english /var/www/html/phpMyAdmin

mv /wordpress /var/www/html/wordpress
mv /wp-config.php var/www/html/wordpress

# setting up rights
chown -R www-data /var/www

# MySQL
service mysql restart
echo "CREATE USER 'wp_admin'@'localhost';" | mysql -u root --skip-password
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_admin'@'localhost' \
        IDENTIFIED BY 'admin' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

mkdir /var/www/html/data
touch /var/www/html/data/file_1.txt
touch /var/www/html/data/file_2.txt
touch /var/www/html/data/file_3.txt

openssl req -x509 -nodes -days 3650 \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=21-school/OU=ngamora/CN=localhost/" \
	-keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

echo "autoindex is off"
service nginx restart
service php7.3-fpm restart 

bash
