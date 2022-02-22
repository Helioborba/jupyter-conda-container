#!/bin/sh
# sh for windows to do its work

# you dont need to stop and build always
docker stop $(docker ps -q)
docker build -t conda/borba:latest .

docker run -it -p 8888:8888 -v ${PWD}/notebooks:/opt/notebooks conda/borba