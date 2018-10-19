#!/bin/bash

mysqlver=$(mysql -V)
echo $mysqlver;
echo "Starting mysql server";
service mysql start
