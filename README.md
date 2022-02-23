## :information_source: docker-web-server
Это проект по системному администрированию. С помощью одной команды можно развернуть веб-сервер (NGINX + WordPress + MariaDB).

- Веб-сервер настроивается с помощью Nginx только в одном контейнере docker.
- Контейнерная ОС — debian buster.
- Веб-сервер запускает несколько служб одновременно: WordPress, phpMyAdmin и MariaDB.
- Сервер имеет возможность использовать протокол SSL.
- Присутствует скрипт для включения/отключения автоиндексации.


## :hammer: Build

Для начала склонируйте этот репозиторий и перейдите в директорию с проектом:

```
git clone https://github.com/zagaynov-andrew/docker-web-server.git && cd docker-web-server
```

Чтобы собрать docker образ, выполните команду:
```
docker build -t docker-web-server .
```

:pushpin: Для успешной сборки вам понадобится установленный Docker.

## :rocket: Launch

Для запуска веб-сервера:

```
docker run --rm --name c-docker-web-server -it -p 80:80 -p 443:443 docker-web-server
```

После чего, можно проверить работоспособность на [localhost:80](http://localhost:80) (перенапрвление на безопасный https происходит автоматически)
