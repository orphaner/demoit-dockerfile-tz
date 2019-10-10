FROM debian:stable

RUN apt update
RUN apt install -y nginx
RUN apt-get clean

COPY index.html /var/www/html/

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]
EXPOSE 80
