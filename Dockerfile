FROM ubuntu:xenial

LABEL maintainer="ShotaKitazawa <skitazawa1121@gmail.com>"

RUN apt update -y

RUN apt install -y \
      mysql-client \
      mongodb-clients

COPY dumper .
ENTRYPOINT ["bash", "dumper"]
