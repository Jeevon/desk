#!/bin/bash

service nginx start
service php7.2-fpm start
service php5.6-fpm start

exec "$@"
