FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install wget
RUN mkdir /minio
RUN cd minio
RUN wget https://dl.minio.io/client/mc/release/linux-amd64/mc
RUN chmod +x mc