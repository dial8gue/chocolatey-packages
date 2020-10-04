$ErrorActionPreference = 'Stop';
 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://riotgamespatcher-a.akamaihd.net/releases/live/installer/deploy/League%20of%20Legends%20installer%20RU.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    softwareName  = 'leagueoflegendsRU*'
    url            = $url
    fileType       = 'EXE'
    silentArgs     = '--mode unattended'
    validExitCodes = @(0)   
}
 
Install-ChocolateyPackage @packageArgs
