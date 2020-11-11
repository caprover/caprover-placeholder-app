#!/bin/sh


APP_PLACEHOLDER_IMAGE_NAME="caprover/caprover-placeholder-app"

echo "Deploying to Docker hub ..."

# docker build -t $APP_PLACEHOLDER_IMAGE_NAME .
# docker tag $APP_PLACEHOLDER_IMAGE_NAME $APP_PLACEHOLDER_IMAGE_NAME:latest
# docker push $APP_PLACEHOLDER_IMAGE_NAME:latest
# docker push $APP_PLACEHOLDER_IMAGE_NAME

export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx ls
docker buildx create --name mybuilder
docker buildx use mybuilder

# linux/arm/v7 changed to linux/arm to be more generic
docker buildx build --platform linux/amd64,linux/arm64,linux/arm,linux/386 -t $APP_PLACEHOLDER_IMAGE_NAME:latest --push .
