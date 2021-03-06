#!/bin/bash
DOCKER_FILE=${1:-Dockerfile}
DOCKER_IMAGE_NAME=dynatrace/java-example
DOCKER_IMAGE_TAG=1.0

echo "Building Docker image: ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} -f ${DOCKER_FILE} .
if [ $? -ne 0 ]; then
  echo "Failed to build image: ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
  exit 1
fi 

docker tag -f ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ${DOCKER_IMAGE_NAME}
