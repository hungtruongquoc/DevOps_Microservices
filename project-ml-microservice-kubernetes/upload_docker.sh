#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=hungtruongquoc/udacity-devops
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag hungtruongquoc/udacity-devops:latest hungtruongquoc/udacity-devops
# Step 3:
# Push image to a docker repository
docker push $dockerpath