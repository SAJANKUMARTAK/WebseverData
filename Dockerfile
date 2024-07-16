FROM ubuntu:latest
WORKDIR /var/www/html
RUN apt-get update
RUN apt install -y apache2
RUN echo "webserver" > /var/www/html/index.html
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
