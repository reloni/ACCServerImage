#!/bin/bash
set -e

docker run -it --name accserver --restart=unless-stopped \
  -v /Users/AntonEfimenko/_tempdel/accserverexample:/accserver \
  -p 9231:9231/udp \
  -p 9232:9232/tcp accservertest:latest
