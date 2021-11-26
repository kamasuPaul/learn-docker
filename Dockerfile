FROM easyrydes_backend
LABEL maintainer="kamasupaul@gmail.com"
EXPOSE 80
WORKDIR /var/www/
ENTRYPOINT ["php","artisan","serve","--port","9000"]