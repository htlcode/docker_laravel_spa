FROM nginx:latest

RUN apt-get update && apt-get install -y curl

COPY ./default.conf.template /etc/nginx/conf.d/default.conf.template

COPY ./php-upstream.conf /etc/nginx/conf.d/php-upstream.conf

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /var/www/

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]