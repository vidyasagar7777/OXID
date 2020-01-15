
# composer credentials
$COMPOSER_AUTH = '{ \"http-basic\": { \"enterprise-edition.packages.oxid-esales.com\": { \"username\": \"EE\", \"password\": \"<put your password here>\" }}}'

# run composer update
Write-Host "composer update"
docker exec -e COMPOSER_AUTH=$COMPOSER_AUTH oxidcloud-php-dev sh -c 'exec composer update'

# run composer install
Write-Host "composer install"
docker exec -e COMPOSER_AUTH=$COMPOSER_AUTH oxidcloud-php-dev sh -c 'exec composer install'

# just print out that we are finished
Write-Host "Done!"
