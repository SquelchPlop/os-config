# Make sure NuGet available
if ((Get-PackageProvider -Name NuGet).version -lt 2.8.5.208 ) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.208 -Force 
}

# Make sure PSWindowsUpdate available
if (-not (Get-Module -ListAvailable –FullyQualifiedName @{ModuleName="PSWindowsUpdate";ModuleVersion="2.2.0.2"})){
    Install-Module -Name "PSWindowsUpdate" -RequiredVersion 2.2.0.2 -Force 
}

# Add ServiceID for Windows Update
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d -Confirm:$false

# Pause and give the service time to update
Start-Sleep 10

# Scanning against Microsoft for all Software Updates, and installing all, ignoring a reboot
Get-WUInstall -MicrosoftUpdate Software -AcceptAll -IgnoreReboot