############################################################
# Dockerfile to build NodeJs 
# Based on ubuntu:trusty
############################################################

# Set the base image to ubuntu:trusty
FROM ubuntu:trusty

# File Author / Maintainer
MAINTAINER Marcio Godoi <souzagodoi@gmail.com>

USER root

#Installing Ubuntu packages
RUN apt-get update && \
    apt-get install -y \
    wget \
   	tar \
	less \
	git \
	curl \
	vim \
	wget \
	unzip \
	netcat \
	telnet 

#Adding to a APT repository a specific version of node
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

