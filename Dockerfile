FROM debian:wheezy
MAINTAINER Josh Cox <josh 'at' webhosting.coop>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y dist-upgrade
#RUN apt-get -y install python-software-properties curl build-essential libxml2-dev libxslt-dev git ruby1.9.1-dev ca-certificates sudo net-tools vim wget
RUN apt-get -y install curl git wget

RUN cd /usr/local/bin; wget https://raw.github.com/progrium/gitreceive/master/gitreceive; chmod +x /usr/local/bin/gitreceive
RUN useradd -m -G users -s /bin/bash git; mkdir /home/git;chown git. /home/git
