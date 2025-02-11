FROM debian:bookworm

RUN apt-get update && sudo apt-get upgrade -y
RUN apt-get install -y php-fpm php-mysql \
    curl wget unzip

RUN rm -rf /var/lib/apt/lists/*

RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz -C /var/www/html && \
    chown -R www-data:www-data /var/www/html/wordpress && \
    rm latest.tar.gz

EXPOSE 9000

CMD ["php-fpm", "-F"]