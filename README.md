# Setup local debug environment

## Ubuntu
- Install docker
- Install Azure CLI
```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```
- Initial login to OXID cloud container registry. Run the following command and provide your credentials
```bash
az login
```
more information on installing Azure Cli: https://docs.microsoft.com/de-de/cli/azure/install-azure-cli?view=azure-cli-latest
- run StartDatabase.sh from scripts folder
- run StartDebugShop.sh from scripts folder
- run InitDbData.sh from scripts folder to restore the initial data


## Windows
- Install docker for windows and configure a shared folder with your local machine https://rominirani.com/docker-on-windows-mounting-host-directories-d96f3f056a2c
- In docker settings -> General, select checkbox "Expose daemon on tcp://localhost:2375 without TLS"
```Powershell
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'
```
- Initial login to OXID cloud container registry. Run the following command and provide your credentials
```Powershell
az login
```
- Install PowerShell extension for PhpStorm
- run StartDatabase.ps1 from scripts folder
- run StartDebugShop.ps1 from scripts folder
- run InitDbData.ps1 from scripts folder to restore the initial data

