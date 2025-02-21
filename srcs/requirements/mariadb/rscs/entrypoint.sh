#!/bin/sh

mysqld_safe --datadir=/var/lib/mysql &

until mysqladmin ping --silent; do
    sleep 1
done

envsubst < /rscs/init.sql.template > /rscs/init.sql
mysql -u root < /rscs/init.sql

wait