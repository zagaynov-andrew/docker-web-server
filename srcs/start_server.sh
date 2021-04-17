# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start_server.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ngamora <ngamora@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/14 20:53:22 by ngamora           #+#    #+#              #
#    Updated: 2021/04/17 17:58:56 by ngamora          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# replacing the nginx config file
rm /etc/nginx/sites-available/default
mv etc/default etc/nginx/sites-available/default

# setting up rights
chown -R www-data /var/www

# MySQL
service mysql restart
echo "CREATE USER 'wp_admin'@'localhost';" | mysql -u root --skip-password
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_admin'@'localhost' \
        IDENTIFIED BY 'admin' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

echo "startting..."

mkdir /var/www/html/data
touch /var/www/html/data/file_1.txt
touch /var/www/html/data/file_2.txt
touch /var/www/html/data/file_3.txt

service nginx restart

bash