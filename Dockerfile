FROM debian:stable-slim

WORKDIR /workdir

RUN apt-get update && apt-get install -y make gcc git p7zip-full
