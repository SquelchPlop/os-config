# Check PolicyFileEditor available
$policyFileEditorVersion = "3.0.1"

if(Get-InstalledModule | Where-Object {($_.Name -eq "PolicyFileEditor") -and ($_.Version -eq $policyFileEditorVersion)}){
    Write-Host "PolicyFileEditor $policyFileEditorVersion is installed already!"
}else{
    Install-PackageProvider -Name NuGet -Force
    Install-Module -Name PolicyFileEditor -RequiredVersion $policyFileEditorVersion -Force 
}

. ./dsc_configurations/ClientBaseline.ps1
ClientBaseline -OutputPath ./mof/ClientBaseline
Start-DscConfiguration -Path ./mof/ -Wait -Verbose -Force

. ./dsc_configurations/ClientBaseline2.ps1
ClientBaseline2 -OutputPath ./mof/ClientBaseline2
Start-DscConfiguration -Path ./mof/ -Wait -Verbose -Force

gpupdate