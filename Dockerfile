FROM alpine:3.13.6 AS builder
WORKDIR tools

RUN wget https://download.bell-sw.com/vm/21.3.0/bellsoft-liberica-vm-core-openjdk11-21.3.0-linux-x64-musl.apk
RUN wget -P /etc/apk/keys/ https://apk.bell-sw.com/info@bell-sw.com-5fea454e.rsa.pub

RUN apk add bellsoft-liberica-vm-core-openjdk11-21.3.0-linux-x64-musl.apk
RUN apk add build-base
RUN apk add maven
RUN apk add zlib-dev
ENV NIK_HOME /opt/bellsoft/liberica-vm-core-21.3.0-openjdk11/bin
ENV JAVA_HOME /opt/bellsoft/liberica-vm-core-21.3.0-openjdk11
