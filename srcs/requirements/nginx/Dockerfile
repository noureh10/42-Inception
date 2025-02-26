FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y
RUN apt install -y nginx openssl curl iputils-ping

RUN openssl req -newkey rsa:3072 -x509 -days 180 -nodes \
    -keyout /etc/ssl/private/nechaara_key.pem \
    -out /etc/ssl/certs/nechaara_crt.pem \
    -subj "/C=BE/O=42/ST=Bruxelles/CN=nechaara.42.fr"

RUN chown root:root /etc/ssl/private/nechaara_key.pem /etc/ssl/certs/nechaara_crt.pem
RUN chmod 600 /etc/ssl/private/nechaara_key.pem /etc/ssl/certs/nechaara_crt.pem

COPY ./rscs/server.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]