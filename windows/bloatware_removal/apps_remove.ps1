Set-Location $env:temp

# Remove UWP apps
Invoke-RestMethod -Method Get -URI https://raw.githubusercontent.com/Digressive/Remove-Win10-Apps/master/Remove-Win10-Apps.ps1 -OutFile Remove-Win10-Apps.ps1
Invoke-RestMethod -Method Get -URI https://raw.githubusercontent.com/SquelchPlop/os-config/master/windows/bloatware_removal/apps.txt -OutFile apps.txt
./Remove-Win10-Apps.ps1 -List ./apps.txt -L ./

Write-Output "Removed apps"