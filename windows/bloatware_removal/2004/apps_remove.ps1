Set-Location $env:temp

Invoke-RestMethod -Method Get -URI https://raw.githubusercontent.com/Digressive/Remove-Win10-Apps/master/Remove-Win10-Apps.ps1 -OutFile Remove-Win10-Apps.ps1
Invoke-RestMethod -Method Get -URI https://raw.githubusercontent.com/SquelchPlop/windows-config/master/bloatware_removal\2004\apps.txt -OutFile apps.txt
./Remove-Win10-Apps.ps1 -List ./apps.txt -L ./

Write-Host "Success"
exit 0