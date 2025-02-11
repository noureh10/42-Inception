FROM debian:bookworm

RUN apt-get update && sudo apt-get upgrade -y
RUN apt install mariadb -y

COPY rscs/init.sql /docker-entrypoint-initdb.d/init.sql

EXPOSE 3306

CMD ["mysqld"]