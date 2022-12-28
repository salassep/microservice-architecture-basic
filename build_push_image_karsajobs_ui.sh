#! /bin/sh

# Create a docker image from a dockerfile with the name salassep/karsajobs-ui and with the latest version.
docker build -t salassep/karsajobs-ui:latest .

# Adjust the docker image name according to the github packages format
docker tag salassep/karsajobs-ui:latest ghcr.io/salassep/karsajobs-ui:latest

# Login to github packages using token
echo $CR_PAT | docker login ghcr.io -u salassep --password-stdin

# Push the docker image to github packages
docker push ghcr.io/salassep/karsajobs-ui:latest