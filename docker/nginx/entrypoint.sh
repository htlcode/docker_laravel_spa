#!/bin/sh
envsubst '${NGINX_BACK_DOMAIN} ${NGINX_FRONT_DOMAIN} ${NGINX_BACK_FOLDER} ${NGINX_FRONT_PORT}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
exec nginx -g 'daemon off;'