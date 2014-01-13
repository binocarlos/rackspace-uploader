FROM ubuntu:12.04

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl wget
RUN wget -qO- https://raw.github.com/binocarlos/rackspace-uploader/master/bootstrap.sh | bash
ENTRYPOINT ["/usr/local/bin/rackspace-uploader"]