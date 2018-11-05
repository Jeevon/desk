FROM ubuntu:latest

LABEL maintainerr="johnjeevonang@gmail.com"

# configure startup commands

ADD ./start-up.sh /opt/scripts/start-up.sh
RUN chmod +x /opt/scripts/start-up.sh

#update apt
RUN apt update -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt update -y

# set timezone
ENV TZ 'Asia/Hong_Kong'
RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# install nginx
RUN apt install nginx -y

# install php
RUN apt install php5.6-fpm php5.6-mysql php7.2-fpm php7.2-mysql -y

EXPOSE 80

WORKDIR /usr/share/nginx/html/

ENTRYPOINT ["/opt/scripts/start-up.sh"]
