FROM ubuntu:26.04

LABEL name="ubuntu test container"

RUN apt update && apt install nginx -y

WORKDIR /var/www/html

RUN rm -f index.nginx-debian.html

COPY *.html . 

WORKDIR /etc/nginx/sites-available

COPY config/default .

WORKDIR /etc/nginx

RUN rm -f nginx.conf

COPY config/nginx.conf .

EXPOSE 5000

CMD ["nginx", "-g", "daemon off;"]
