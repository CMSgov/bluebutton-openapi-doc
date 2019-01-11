#!/usr/bin/env bash

# Get directory this script is in..
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# set environment variables
export HOST_EDITOR_PORT=8080
export TARGET_DIR=openapi/bluebutton
export OPENAPI_DOC="bb2_fhir_openapi.yaml"
export NGINX_BASE=/usr/share/nginx/html
export OA_URL=/$TARGET_DIR/$OPENAPI_DOC
export DOCKER_NAME=swagger-ed

# launch docker with swagger-ui in background
docker run -d \
       -p $HOST_EDITOR_PORT:8080  \
       -v $DIR/bluebutton:$NGINX_BASE/$TARGET_DIR  \
       -e API_URL=$OA_URL  \
       --name $DOCKER_NAME  \
       swaggerapi/swagger-editor

echo ""
echo goto http://localhost:$HOST_EDITOR_PORT
echo ""
echo YAML Source=$DIR/bluebutton/$OPENAPI_DOC
echo ""
echo If you get a docker error try the following commands
echo docker container kill $DOCKER_NAME
echo docker container rm $DOCKER_NAME
echo to remove the container
