FROM ubuntu:latest
#install nginx
RUN apt-get update && apt-get install -y nginx
#create nginx content root directory
RUN mkdir -p /var/www/html/websites
#copy nginx config file
COPY global.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

