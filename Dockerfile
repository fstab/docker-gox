FROM fstab/go:latest
MAINTAINER Fabian Stäber, fabian@fstab.de

ENV LAST_UPDATE=2015-09-25

USER root
RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    build-essential

USER go
RUN go get github.com/mitchellh/gox
USER root
RUN cp /home/go/bin/gox /usr/local/bin
USER go
