# Initialize database with sample data
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
Write-Host $scriptDir
docker exec oxidcloud-mysql sh -c 'exec mysqldump --hex-blob --databases oxid -uroot -poxid' > $scriptDir\..\..\db\dev_data.sql
