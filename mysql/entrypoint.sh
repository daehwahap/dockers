#!/bin/bash

# Wait for MySQL to start
until mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
    echo 'Waiting for MySQL to start...'
    sleep 1
done

# Create database and user
mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS dbname;"
mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "CREATE USER 'new_user'@'%' IDENTIFIED BY 'new_password';"
mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "GRANT ALL PRIVILEGES ON dbname.* TO 'new_user'@'%';"
