FROM ubuntu:latest
MAINTAINER Volkan Özçelik <me@volkan.io>
LABEL Description="A ready-to-run Node.JS Container"
RUN apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - \
    && apt-get install -y nodejs \
    && mkdir -p /opt/jsbites
VOLUME /opt/jsbites
