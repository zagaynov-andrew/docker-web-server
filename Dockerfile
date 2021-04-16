# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ngamora <ngamora@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/13 14:19:50 by ngamora           #+#    #+#              #
#    Updated: 2021/04/16 21:18:06 by ngamora          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y  vim && \
                        mariadb-server

WORKDIR /

COPY ./srcs/start_server.sh /

CMD bash start_server.sh