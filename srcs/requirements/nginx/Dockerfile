FROM debian:bookworm

RUN sudo apt-get update && sudo apt-get upgrade -y
RUN sudo apt install -y nginx

COPY ./rscs/server.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx"]