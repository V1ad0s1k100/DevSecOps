FROM nginx:latest

COPY ./sites/ /var/www/html/

COPY ./config/nginx.conf /etc/nginx/nginx.conf

COPY ./config/default.conf /etc/nginx/conf.d/default.conf