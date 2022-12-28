#! /bin/sh

docker build -t salassep/karsajobs:latest .

docker tag salassep/karsajobs:latest ghcr.io/salassep/karsajobs:latest

echo $CR_PAT | docker login ghcr.io -u salassep --password-stdin

docker push ghcr.io/salassep/karsajobs:latest