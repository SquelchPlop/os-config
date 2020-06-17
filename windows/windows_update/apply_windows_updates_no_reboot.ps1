# Make sure NuGet available
$nuget = Get-PackageProvider -Name NuGet -ListAvailable
if ((-not $nuget) -or ($nuget.version -lt 2.8.5.208 )) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.208 -Force -Confirm:$false
}

# Make sure PSWindowsUpdate available
if (-not (Get-Module -ListAvailable –FullyQualifiedName @{ModuleName="PSWindowsUpdate";ModuleVersion="2.2.0.2"})){
    Install-Module -Name "PSWindowsUpdate" -RequiredVersion "2.2.0.2" -Force 
}
Import-Module PSWindowsUpdate

# Add ServiceID for Microsoft Update if needed
if (-not (Get-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d)){
    Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d -Confirm:$false
    Start-Sleep 30
}

# Scanning against Microsoft for all Software Updates, and installing all, ignoring a reboot
Get-WUInstall -MicrosoftUpdate -AcceptAll -IgnoreReboot