FROM ubuntu:20.04

RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y apache2 php

COPY html /var/www/html/

RUN date > /var/www/html/buildtime.txt

WORKDIR /var/www/html/
EXPOSE 80/tcp
CMD service apache2 start && bash
