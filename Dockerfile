#
# Gitjacker Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV GITJACKER_VERSION v0.0.1

# Update & install packages for installing gitjacker
RUN apt-get update && \
    apt-get install -y wget unzip git

#Install and configure gitjacker
RUN mkdir gitjacker && \
    cd gitjacker && \
    wget https://github.com/liamg/gitjacker/releases/download/${GITJACKER_VERSION}/gitjacker-linux-amd64 -O gitjacker && \
    chmod +x gitjacker

WORKDIR /gitjacker

CMD ./gitjacker $url
