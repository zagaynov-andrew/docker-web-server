#!/bin/bash

docker build -t web-server .
docker run --rm --name c-web-server -it -p 80:80 -p 443:443 web-server

# docker build -t name .
# docker run --rm --name c-name -it -p 80:80 -p 443:443 name