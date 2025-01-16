#!/bin/bash
docker rm -f dwd
docker rmi dwd:1.0
docker build -t dwd:1.0 .
docker run -d --name dwd -p 8080:8080 dwd:1.0
