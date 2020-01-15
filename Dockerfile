FROM oxidcloud.azurecr.io/oxidcloud-php-dev:latest
MAINTAINER Sagar

#Copying php source
COPY oxideshop/ /var/www/html/

RUN chmod -R 777 /var/www/html/source/tmp
RUN chmod -R 777 /var/www/html/source/log
RUN chmod -R 777 /var/www/html/source/out
#Setting env variables
ENV DB_USER=root
ENV DB_PASS=oxid
ENV DB_NAME=oxid
ENV DB_HOST=172.17.0.1
ENV SHOP_URL=http://localhost 

#Set hostname
RUN echo $(grep $(hostname) /etc/hosts | cut -f1) oxidappsrv >> /etc/hosts
EXPOSE 80