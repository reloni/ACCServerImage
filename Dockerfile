FROM ubuntu:18.04

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wine-development && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /accserver

ENV WINEARCH=win64 \
    WINEDEBUG=-all

RUN wineboot --init

WORKDIR /accserver

CMD ["wine", "accServer.exe"]
