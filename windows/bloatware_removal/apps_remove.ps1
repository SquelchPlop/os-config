$ToRemove = @(
    "Microsoft.Microsoft3DViewer"
    "Microsoft.549981C3F5F10"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.ZuneVideo"
    "Microsoft.GetHelp"
    "Microsoft.ZuneMusic"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MixedReality.Portal"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.Getstarted"
)

foreach ($App in $ToRemove) {
    $PackageFullName = (Get-AppxPackage $App).PackageFullName
    $ProvisionedPackageFullName = (Get-AppxProvisionedPackage -Online | Where-Object {$_.Displayname -eq $App}).PackageName

    If ($PackageFullName)
    {
        Write-Output -Type Info -Event "Removing Package: $App"
        Remove-AppxPackage -AllUsers -Package $PackageFullName | Out-Null
    }

    else {
        Write-Output -Type Info -Event "Unable to find package: $App"
    }

    If ($ProvisionedPackageFullName)
    {
        Write-Output -Type Info -Event "Removing Provisioned Package: $ProPackageFullName"
        Remove-AppxProvisionedPackage -Online -PackageName $ProPackageFullName | Out-Null
    }

    else {
        Write-Output -Type Info -Event "Unable to find provisioned package: $App"
    }
}

Write-Output "Removed apps"