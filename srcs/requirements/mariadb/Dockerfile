FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y
RUN apt install -y mariadb-server mariadb-client gettext

COPY rscs/init.sql.template /rscs/init.sql.template
COPY rscs/entrypoint.sh /rscs/entrypoint.sh 
RUN chmod +x /rscs/entrypoint.sh 

EXPOSE 3306

ENTRYPOINT ["/rscs/entrypoint.sh"]