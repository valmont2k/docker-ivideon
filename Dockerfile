############################################################
# Dockerfile to run Ivideon server
# Based on Ubuntu 12.04 LTS
############################################################
FROM ubuntu:14.10
MAINTAINER Nick Heinemans (nick@hostlogic.nl)
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
&& apt-get -y install curl apt-utils \
&& curl -s wget http://packages.ivideon.com/public/keys/ivideon.list -o /etc/apt/sources.list.d/ivideon.list \
&& curl -s http://packages.ivideon.com/public/keys/ivideon.key | apt-key add - \
&& apt-get update \
&& apt-get install -y ivideon-server \
&& apt-get clean
ENTRYPOINT ["/opt/ivideon/ivideon-server/videoserver"]
