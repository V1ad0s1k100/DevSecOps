FROM ubuntu:26.04

LABEL name="ubuntu test container"

RUN apt update && apt install nginx -y

WORKDIR /var/www/html

RUN rm index.nginx-debian.html

COPY *.html . 

WORKDIR /etc/nginx/sites-available

COPY config/default .

WORKDIR /etc/nginx/

RUN rm nginx.config

COPY config/nginx.conf .

RUN systemclt restart nginx.service

CMD ["nginx", "-g", "daemon off;"]
