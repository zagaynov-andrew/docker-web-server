# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ngamora <ngamora@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/13 14:19:50 by ngamora           #+#    #+#              #
#    Updated: 2021/04/17 17:45:42 by ngamora          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y mariadb-server && \
    apt-get install -y nginx

COPY ./srcs/default /etc

WORKDIR /

COPY ./srcs/start_server.sh /
COPY ./srcs/index.html /var/www/html

EXPOSE 80

CMD bash start_server.sh