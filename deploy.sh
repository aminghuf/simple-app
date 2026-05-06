#!/bin/bash

docker stop simple-app || true
docker rm simple-app || true

docker build -t simple-docker-app .

docker run -d \
-p 127.0.0.1:5000:5000 \
--name simple-app \
simple-docker-app
