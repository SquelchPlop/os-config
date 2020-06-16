# Apps to remove
$appsToRemove = "Microsoft.Microsoft3DViewer
Microsoft.549981C3F5F10
Microsoft.WindowsFeedbackHub
Microsoft.ZuneVideo
Microsoft.GetHelp
Microsoft.ZuneMusic
Microsoft.MicrosoftSolitaireCollection
Microsoft.MixedReality.Portal
Microsoft.MicrosoftOfficeHub
Microsoft.Getstarted"

Set-Location $env:temp

# Remove UWP apps
Invoke-RestMethod -Method Get -URI https://raw.githubusercontent.com/Digressive/Remove-Win10-Apps/master/Remove-Win10-Apps.ps1 -OutFile Remove-Win10-Apps.ps1

# Apps to remove in txt file
$appsToRemove | Out-File appsToRemove.txt

# Perform removal
./Remove-Win10-Apps.ps1 -List ./appsToRemove.txt -L ./

Write-Output "Removed apps"