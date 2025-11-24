FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y apache2 libapache2-mod-php php
RUN rm -f /var/www/html/index.html
COPY . /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
