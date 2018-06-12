if (-not(Get-Module -ListAvailable -Name 'posh-git'))
{
    Install-Module -Name 'posh-git' -Force -Scope CurrentUser
}

#Module Imports
Import-module -Name 'posh-git'

#Custom Module Imports

#Custom Aliases
New-Alias -Name 'dig' -Value 'Resolve-DnsName'

#Console Config
Set-location -Path "$($ENV:USERPROFILE)\git"
Start-SshAgent -Quiet