FROM debian:bookworm

RUN apt-get update && sudo apt-get upgrade -y
RUN apt install -y nginx openssl

COPY ./rscs/server.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g", "daemon off"]