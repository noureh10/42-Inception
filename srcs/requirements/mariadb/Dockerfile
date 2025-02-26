FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y
RUN apt install -y mariadb-server gettext iputils-ping

COPY rscs/init.sql.template /rscs/init.sql.template
COPY rscs/entrypoint.sh /rscs/entrypoint.sh 
RUN chmod +x /rscs/entrypoint.sh

RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT ["/rscs/entrypoint.sh"]