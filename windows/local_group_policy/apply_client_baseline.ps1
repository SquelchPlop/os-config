# Create dir
$workingDir = "$env:temp\local_group_policy\"
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

# Download latest DSC configuration and data
Invoke-RestMethod -Method Get -URI "https://raw.githubusercontent.com/SquelchPlop/os-config/master/windows/local_group_policy/dsc_configurations/ClientBaseline.ps1" -OutFile ClientBaseline.ps1
Invoke-RestMethod -Method Get -URI "https://raw.githubusercontent.com/SquelchPlop/os-config/master/windows/local_group_policy/dsc_data/LocalGroupPolicies.psd1" -OutFile LocalGroupPolicies.psd1

# Setup configuration data
$ConfigurationData =
@{
    AllNodes =
    @(
        @{
            NodeName           = "localhost"
            LocalGroupPolicies = (Import-PowerShellDataFile -Path LocalGroupPolicies.psd1).Policies
        }
    )
}

# Dot source the client configuration
. ./ClientBaseline.ps1

# Generate MOFs
ClientBaseline -ConfigurationData $ConfigurationData -OutputPath ./mof/

# Apply DSC configuration
if(-not $(Test-PSRemoting -ComputerName "localhost")){
    Enable-PSRemoting -SkipNetworkProfileCheck
}
Start-DscConfiguration -Path ./mof/ -Wait -Verbose -Force

# Refresh Local Group Policy
gpupdate