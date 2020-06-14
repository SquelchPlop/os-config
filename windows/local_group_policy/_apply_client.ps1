# Check PolicyFileEditor available
$policyFileEditorVersion = "3.0.1"

if(Get-InstalledModule | Where-Object {($_.Name -eq "PolicyFileEditor") -and ($_.Version -eq $policyFileEditorVersion)}){
    Write-Host "PolicyFileEditor $policyFileEditorVersion is installed already!"
}else{
    Install-PackageProvider -Name NuGet -Force
    Install-Module -Name PolicyFileEditor -RequiredVersion $policyFileEditorVersion -Force 
}

# Setup configuration data
$ConfigurationData =
@{
    AllNodes =
    @(
        @{
            NodeName           = "localhost"
            LocalGroupPolicies = (Import-PowerShellDataFile -Path ./dsc_data/LocalGroupPolicies.psd1).Policies
        }
    )
}

# Dot source the client configuration
. ./dsc_configurations/ClientBaseline.ps1

# Generate MOFs
ClientBaseline -ConfigurationData $ConfigurationData -OutputPath ./mof/ClientBaseline

# Apply DSC configuration
Start-DscConfiguration -Path ./mof/ClientBaseline -Wait -Verbose -Force

# Refresh Local Group Policy
gpupdate