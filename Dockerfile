FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

# Install Apache
RUN apt-get update -y && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy website files to Apache web root
COPY . /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
