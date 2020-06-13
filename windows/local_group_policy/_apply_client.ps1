# Check PolicyFileEditor available
$policyFileEditorVersion = "3.0.1"

if(Get-InstalledModule | Where-Object {($_.Name -eq "PolicyFileEditor") -and ($_.Version -eq $policyFileEditorVersion)}){
    Write-Host "PolicyFileEditor $policyFileEditorVersion is installed already!"
}else{
    Install-PackageProvider -Name NuGet -Force
    Install-Module -Name PolicyFileEditor -RequiredVersion $policyFileEditorVersion -Force 
}

# Dot source the client configuration
. ./dsc_configurations/ClientConfiguration.ps1

# Generate MOFs
ClientLocalGroupPolicy -ConfigurationData ./dsc_configurations/ClientLocalGroupPolicyData.psd1 -OutputPath ./mof/ClientConfiguration

# Apply DSC configuration
Start-DscConfiguration -Path ./mof/ClientConfiguration -Wait -Verbose -Force

# Refresh Local Group Policy
gpupdate