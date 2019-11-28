#!/usr/bin/evn bash

#build image
docker build --tag=api .

#List docker images
docker image ls

#run docker flask app
docker run -p 8000:5001 api
