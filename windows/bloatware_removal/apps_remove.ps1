Set-Location $env:temp

# Apps to remove into text file
"Microsoft.Microsoft3DViewer
Microsoft.549981C3F5F10
Microsoft.WindowsFeedbackHub
Microsoft.ZuneVideo
Microsoft.GetHelp
Microsoft.ZuneMusic
Microsoft.MicrosoftSolitaireCollection
Microsoft.MixedReality.Portal
Microsoft.MicrosoftOfficeHub
Microsoft.Getstarted" | Out-File appsToRemove.txt

# Remove UWP apps
Invoke-RestMethod -URI https://raw.githubusercontent.com/Digressive/Remove-Win10-Apps/master/Remove-Win10-Apps.ps1 -OutFile Remove-Win10-Apps.ps1

# Perform removal
./Remove-Win10-Apps.ps1 -List ./appsToRemove.txt -L ./

# Cleanup
Remove-Item appsToRemove.txt -Force
Remove-Item Remove-Win10-Apps.ps1 -Force

Write-Output "Removed apps"