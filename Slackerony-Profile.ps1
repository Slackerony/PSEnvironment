if (-not(Get-Module -ListAvailable -Name 'posh-git') -or
    -not(Get-Module -ListAvailable -Name 'posh-docker'))
{
    Install-Module -Name 'posh-git' -Force -Scope CurrentUser
    Install-Module -Name 'posh-docker' -Force -Scope CurrentUser
}

#Module Imports
Import-module -Name 'posh-git'
Import-Module -Name 'posh-docker'

#Custom Module Imports
Import-Module -Name "$PSScriptRoot\..\WindowsAutomationScripts\Modules\PSFX\PSFX.psm1"

#Custom Aliases
New-Alias -Name 'dig' -Value 'Resolve-DnsName'

#Console Config
Set-location -Path 'C:\Users\Jonathan\Documents\GitHub\'
Start-SshAgent -Quiet