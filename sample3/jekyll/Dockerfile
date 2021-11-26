FROM ubuntu:latest
LABEL mantainer="kamasupaul.com"

RUN apt-get -y update
#install ruby
RUN apt-get  -y install ruby ruby-dev build-essential nodejs
RUN gem install jekyll -v 2.5.3

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]
