Set-Location $env:temp

# Make sure NuGet available
if ((Get-PackageProvider -Name NuGet).version -lt 2.8.5.208 ) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.208 -Confirm:$False -Force 
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
Invoke-RestMethod -Method Get -URI "https://raw.githubusercontent.com/SquelchPlop/os-config/master/windows/local_group_policy/dsc_data/LocalGroupPolicies.psd1" -OutFile LocalGroupPolicies.ps1

# Setup configuration data
$ConfigurationData =
@{
    AllNodes =
    @(
        @{
            NodeName           = "localhost"
            LocalGroupPolicies = (Import-PowerShellDataFile -Path LocalGroupPolicies.ps1).Policies
        }
    )
}

# Dot source the client configuration
. ./ClientBaseline.ps1

# Generate MOFs
Remove-Item ./mof/ -Recurse | Out-Null
ClientBaseline -ConfigurationData $ConfigurationData -OutputPath ./mof/

# Apply DSC configuration
if(-not $(Test-PSRemoting -ComputerName "localhost")){
    Enable-PSRemoting -SkipNetworkProfileCheck
}
Start-DscConfiguration -Path ./mof/ -Wait -Verbose -Force

# Refresh Local Group Policy
gpupdate