FROM debian:stable

RUN apt update && \
    apt install -y nginx && \
    apt-get clean

COPY index.html /var/www/html/

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]
EXPOSE 80
