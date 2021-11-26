# my i.comage
FROM ubuntu:18.04
LABEL maintainer="kamasupaul@gmail.com"
RUN apt-get update; apt-get install -y nginx
RUN echo "Hi, am your container" \
    > /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
#CMD ["/bin/bash", "-l"]
# ENTRYPOINT ["/usr/sbin/nginx"]
# CMD ["-h"]
WORKDIR /opt/webapp/db
RUN bundle install
WORKDIR /opt/webapp
ENTRYPOINT ["rackup"]
#env variable
ENV RMV_PATH /home/rvm/
ENV DB_PATH /home/rvm/db
RUN gem install unicorn
WORKDIR $PATH
#USER instruction
#specifies a user that the image should run as.
USER nginx
#VOLUME instruction
#adds volumes to any container created from the image.
VOLUME ["/opt/project"]
#ADD instruction
#adds files and directories from our build enviroment into the image;
#if the destination ends with a '/', then its considered a directory.
ADD software /opt/project
#COPY instruction
#similar to add, but purely focues on copying files and directories from the host(build evironmet) into the image.
COPY software /opt/project
#LABEL instruction
#adds metadata to the image. inform of key/value pairs.
LABEL version="1.0"
#or you can multiple lables on the same line, seperated by spaces.  
LABEL version="1.0" description="This is a test image"
#STOPSIGNAL instruction
#specifies the signal that should be sent to the container when it is stopped.
STOPSIGNAL SIGKILL
#ARG instruction
#defines variables that be passed at build-time via the docker build command.
#commands are specified using --build-arg
ARG PORT
#you can also set a default value for an argument.
ARG PORT=8080
#SHELL instruction
#specifies the shell that should be used to run the command.
SHELL ["/bin/bash", "-l"]
#HEALTHCHECK instruction
#specifies a command that should be run to check the health of the container
#.(test a container to check that it still working correctly)
HEALTHCHECK --interval=10s --timeout=1m --retries=5 CMD ["curl", "http://localhost:$PORT"]
#the check command should exist with 0 to indicate health or 1 to indicate unhealthy state.
#ONBUILD instruction
#specifies a command that should be run before the build process.
#its a build trigger.
ONBUILD RUN ADD . /var/www/






