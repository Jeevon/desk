FROM ubuntu:latest

MAINTAINER John Jeevon Ang <johnjeevonang@gmail.com>

#update apt
RUN apt update -y

#set timezone
ENV TZ 'Asia/Hong_Kong'
    RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

#install nginx
RUN apt install nginx -y

#install mysql
RUN apt install mysql-server -y
# RUN service mysql start

#install php
RUN apt install php-fpm php-mysql -y
