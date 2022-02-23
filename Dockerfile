
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
COPY ./srcs/wordpress.tar.gz /
RUN tar -xzvf wordpress.tar.gz && \
    rm wordpress.tar.gz
RUN service php7.3-fpm start

COPY ./srcs/default /etc
COPY ./srcs/wp-config.php /

WORKDIR /

COPY ./srcs/start_server.sh /
COPY ./srcs/index.html /var/www/html
COPY ./srcs/autoindex.sh /

EXPOSE 80 443

CMD bash start_server.sh
