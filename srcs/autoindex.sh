#!/bin/bash

if grep -q "autoindex off;" /etc/nginx/sites-available/default
then
    replace "autoindex off;" "autoindex on;" -- /etc/nginx/sites-available/default
    echo "autoindex is on"
    service nginx restart
elif grep -q "autoindex on;" /etc/nginx/sites-available/default
then
    replace "autoindex on;" "autoindex off;" -- /etc/nginx/sites-available/default
    echo "autoindex is off"
    service nginx restart
fi
