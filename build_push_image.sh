#! /bin/bash

# Create a docker image from a dockerfile with the name item-app and version v1
docker build -t item-app:v1 .

# List docker images in local
docker images

# Adjust the docker image name according to the github packages format
docker tag item-app:v1 ghcr.io/salassep/item-app:v1

# Login to github packages using token
echo $CR_PAT | docker login ghcr.io -u salassep --password-stdin

# Push the docker image to github packages
docker push ghcr.io/salassep/item-app:v1