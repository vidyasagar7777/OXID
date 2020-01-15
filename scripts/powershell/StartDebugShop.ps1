# container registry login
az acr login --name oxidcloud

# init folders
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# remove image
docker rm oxidcloud-php-dev

# delete old image
docker rmi oxidcloud.azurecr.io/oxidcloud-php-dev:latest

# start shop debug environment
docker run --name oxidcloud-php-dev `
            -p 80:80 -e DB_USER=root `
            -e DB_PASS=oxid -e DB_NAME=oxid `
            -e DB_HOST=host.docker.internal `
            -e SHOP_URL=http://localhost `
            -v $scriptDir/../../oxideshop:/var/www/html `
            --hostname oxidappsrv `
            oxidcloud.azurecr.io/oxidcloud-php-dev:latest