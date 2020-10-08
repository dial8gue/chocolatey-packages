$ErrorActionPreference = 'Stop';
 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.ru.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    softwareName  = 'leagueoflegendsRU*'
    url            = $url
    fileType       = 'EXE'
    silentArgs     = ''
    validExitCodes = @(0)   
}
 
Install-ChocolateyPackage @packageArgs
