# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start_server.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ngamora <ngamora@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/14 20:53:22 by ngamora           #+#    #+#              #
#    Updated: 2021/04/16 21:11:10 by ngamora          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# MySQL
service mysql restart
echo "CREATE USER 'wp_admin'@'localhost';" | mysql -u root --skip-password
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_admin'@'localhost' \
        IDENTIFIED BY 'admin' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

bash