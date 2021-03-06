if (-not(Get-Module -ListAvailable -Name 'posh-git'))
{
    Install-Module -Name 'posh-git' -Force -Scope CurrentUser
}

#Module Imports
Import-module -Name 'posh-git'

#Custom Aliases
New-Alias -Name 'dig' -Value 'Resolve-DnsName'

#Console Config
Set-location -Path "$($ENV:USERPROFILE)\git"
#Add-SshKey "$($ENV:USERPROFILE)\.ssh\id_rsa" --Run if this is a new computer, maybe.
Start-SshAgent -Quiet

#PSReadLine changes
Set-PSReadlineKeyHandler -Key Tab -Function Complete