FROM ubuntu:latest

LABEL maintainerr="johnjeevonang@gmail.com"

ADD ./start-up.sh /opt/scripts/start-up.sh
RUN chmod +x /opt/scripts/start-up.sh

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

#install php
RUN apt install php-fpm php-mysql -y

EXPOSE 80 3306

WORKDIR /usr/share/nginx/html/

ENTRYPOINT ["/opt/scripts/start-up.sh"]
