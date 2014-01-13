FROM ubuntu:12.04

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl

RUN wget -qO /usr/local/bin/JSON.sh https://raw.github.com/dominictarr/JSON.sh/master/JSON.sh
RUN chmod a+x /usr/local/bin/JSON.sh
ADD ./rackspace-uploader /usr/local/bin/rackspace-uploader
RUN chmod a+x /usr/local/bin/rackspace-uploader
ENTRYPOINT ["/usr/local/bin/rackspace-uploader"]