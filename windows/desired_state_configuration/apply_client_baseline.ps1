# Create dir
$workingDir = "$env:temp\desired_state_configuration\"
New-Item -ItemType Directory -Force -Path $workingDir
Set-Location $workingDir
Remove-Item "$workingDir*" -Recurse | Out-Null #Ensure directory is clean

# Make sure NuGet available
$nuget = Get-PackageProvider -Name NuGet -ListAvailable
if ((-not $nuget) -or ($nuget.version -lt 2.8.5.208 )) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.208 -Force -Confirm:$false
}

# Make sure PolicyFileEditor available
if (-not (Get-Module -ListAvailable –FullyQualifiedName @{ModuleName="PolicyFileEditor";ModuleVersion="3.0.1"})){
    Install-Module -Name "PolicyFileEditor" -RequiredVersion 3.0.1 -Force 
}

# Make sure Test-PSRemoting available
if (-not (Get-Module -ListAvailable –FullyQualifiedName @{ModuleName="Test-PSRemoting";ModuleVersion="1.0.1"})){
    Install-Module -Name "Test-PSRemoting" -RequiredVersion 1.0.1 -Force 
}

# Download latest MOF
$releases = "https://api.github.com/repos/SquelchPlop/os-config/releases"
$tag = (Invoke-WebRequest -URI $releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name
Invoke-RestMethod -URI "https://github.com/SquelchPlop/os-config/releases/download/$tag/client_baseline.mof" -UseBasicParsing -OutFile localhost.mof

# Apply DSC configuration
if(-not $(Test-PSRemoting -ComputerName "localhost")){
    Enable-PSRemoting -SkipNetworkProfileCheck
}
Start-DscConfiguration -Path ./ -Wait -Verbose -Force

# Refresh Local Group Policy
gpupdate
