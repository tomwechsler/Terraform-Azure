#Install the Terraform CLI on to your system. 
#I am demonstrating on a Windows virtual machine. Let's go!

#Azure CLI
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; Remove-Item .\AzureCLI.msi

#Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#Terraform
choco install -y terraform

#PowerShell Core
winget install --id Microsoft.Powershell --source winget

#Visual Studio Code
winget install -e --id Microsoft.VisualStudioCode

az config set core.allow_broker=true
az account clear
az login