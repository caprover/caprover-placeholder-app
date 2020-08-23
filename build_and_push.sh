#!/bin/sh


APP_PLACEHOLDER_IMAGE_NAME="caprover/caprover-placeholder-app"

echo "Deploying to Docker hub ..."

exit 0
docker build -t $APP_PLACEHOLDER_IMAGE_NAME .
docker tag $APP_PLACEHOLDER_IMAGE_NAME $APP_PLACEHOLDER_IMAGE_NAME:latest
docker push $APP_PLACEHOLDER_IMAGE_NAME:latest
docker push $APP_PLACEHOLDER_IMAGE_NAME
