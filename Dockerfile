# DOCKER-VERSION 0.5.3

FROM ubuntu:12.04

MAINTAINER Jim Rosser "jarosser06@tamu.edu"

RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install build-essential

RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN /opt/chef/embedded/bin/gem install --no-ri --no-rdoc berkshelf
