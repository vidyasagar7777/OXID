# Initialize database with dev data
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
Write-Host $scriptDir
Get-Content $scriptDir\..\..\db\dev_data.sql | docker exec -i oxidcloud-mysql mysql -uroot -poxid -Doxid -v


