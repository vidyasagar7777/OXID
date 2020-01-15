#!/bin/bash

# container registry login
az acr login --name oxidcloud

# init folders
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $SCRIPTDIR

# remove image
docker rm oxidcloud-php-dev

# delete old image
docker rmi oxidcloud.azurecr.io/oxidcloud-php-dev:latest

# set folder rights
chmod -R 777 $SCRIPTDIR/../../oxideshop/source/tmp
chmod -R 777 $SCRIPTDIR/../../oxideshop/source/log
chmod -R 777 $SCRIPTDIR/../../oxideshop/source/out

# start shop debug environment
docker run --name oxidcloud-php-dev \
            -p 80:80 -e DB_USER=root \
            -e DB_PASS=oxid \
            -e DB_NAME=oxid \
            -e DB_HOST=172.17.0.1 \
            -e SHOP_URL=http://localhost \
            -v $SCRIPTDIR/../../oxideshop:/var/www/html \
            --hostname oxidappsrv \
            oxidcloud.azurecr.io/oxidcloud-php-dev:latest