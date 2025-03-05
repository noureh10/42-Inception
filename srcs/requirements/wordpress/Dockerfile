FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl wget unzip gettext php php-fpm php-curl php-mysql \
    net-tools iputils-ping mariadb-client

RUN rm -rf /var/lib/apt/lists/*

RUN wget https://wordpress.org/latest.tar.gz && \
    mkdir -p /var/www/html && \
    tar -xvzf latest.tar.gz -C /var/www/html && \
    chown -R www-data:www-data /var/www/html/wordpress && \
    rm latest.tar.gz

RUN chown -R www-data:www-data /var/www/html/wordpress
COPY rscs/wp-config.php.template /rscs/wp-config.php.template
COPY rscs/entrypoint.sh /rscs/entrypoint.sh
RUN chmod +x /rscs/entrypoint.sh

RUN echo "listen = 0.0.0.0:9000" >> /etc/php/8.2/fpm/pool.d/www.conf
EXPOSE 9000

ENTRYPOINT ["/rscs/entrypoint.sh"]