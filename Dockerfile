# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ngamora <ngamora@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/13 14:19:50 by ngamora           #+#    #+#              #
#    Updated: 2021/04/17 21:39:36 by ngamora          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y vim && \
    apt-get install -y mariadb-server && \
    apt-get install -y nginx && \
    apt-get install -y wget && \
    apt-get install -y php php-fpm php-mysql php-xml
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-english.tar.gz && \
    tar -zxvf phpMyAdmin-5.1.0-english.tar.gz && \
    rm phpMyAdmin-5.1.0-english.tar.gz
RUN service php7.3-fpm start

COPY ./srcs/default /etc

WORKDIR /

COPY ./srcs/start_server.sh /
COPY ./srcs/index.html /var/www/html

EXPOSE 80

CMD bash start_server.sh