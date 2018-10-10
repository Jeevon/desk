FROM nginx:latest

Run mkdir -p /etc/nginx/sites-enabled

RUN sed '32i    include /etc/nginx/sites-enabled/*;' /etc/nginx/nginx.conf > /etc/nginx/temp.conf
RUN mv /etc/nginx/temp.conf /etc/nginx/nginx.conf

EXPOSE 80
