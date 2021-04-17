docker build -t web-server .
docker run --rm --name c-web-server -it -p 80:80 web-server
