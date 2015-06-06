FROM fstab/go:latest
MAINTAINER Fabian Stäber, fabian@fstab.de

USER root
RUN apt-get install -y \
    build-essential

USER go
RUN go get github.com/mitchellh/gox
USER root
RUN gox -build-toolchain
RUN cp /home/go/bin/gox /usr/local/bin
USER go
