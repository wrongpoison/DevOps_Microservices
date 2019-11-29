#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
$(aws ecr get-login --no-include-email --region us-east-2)
docker build -t project_4 .
docker tag project_4:latest 931162216800.dkr.ecr.us-east-2.amazonaws.com/project_4:latest

# Step 3:
# Push image to a docker repository
docker push 931162216800.dkr.ecr.us-east-2.amazonaws.com/project_4:latest
