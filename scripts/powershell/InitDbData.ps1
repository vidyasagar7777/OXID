# Initialize database with sample data
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
Write-Host $scriptDir
Get-Content $scriptDir\..\..\db\initial_dump.sql | docker exec -i oxidcloud-mysql mysql -uroot -poxid -Doxid -v

