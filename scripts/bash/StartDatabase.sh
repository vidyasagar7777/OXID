#!/bin/bash
# container registry login
az acr login --name oxidcloud
# start local mysql instance
docker run --name oxidcloud-mysql \
            -p 3306:3306 \
            -e MYSQL_ROOT_PASSWORD=oxid \
            -e MYSQL_DATABASE=oxid \
            --hostname oxiddbsrv \
            -d \
            oxidcloud.azurecr.io/oxidcloud-mysql:latest