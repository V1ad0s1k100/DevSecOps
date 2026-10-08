FROM ubuntu:26.04

LABEL name="ubuntu test container"

RUN apt update && apt install nginx -y

WORKDIR /var/www/html

RUN rm index.nginx-debian.html

COPY index.html . 

WORKDIR /etc/nginx/sites-available

COPY default .

CMD ["nginx", "-g", "daemon off;"]
