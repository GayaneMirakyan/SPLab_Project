FROM ubuntu:latest

RUN apt-get update
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD ReverseNum.sh /usr/src/app/

ENTRYPOINT ["/usr/src/app/ReverseNum.sh", "7894"]

