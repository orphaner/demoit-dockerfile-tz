FROM debian:stable

RUN apt update &>/dev/null
RUN apt install -y nginx&>/dev/null
RUN apt-get clean &>/dev/null

COPY index.html /var/www/html/

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]
EXPOSE 80
