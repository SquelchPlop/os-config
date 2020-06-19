#PreReq
& $PSScriptRoot\install_required_modules.ps1

#Load all optional features
$OptionalFeatures = Get-ChildItem $PSScriptRoot\..\data\optional_features\ | ForEach-Object {
    (Import-PowerShellDataFile -Path $_.FullName).OptionalFeatures
}
        
#Load all policies
$Policies = Get-ChildItem $PSScriptRoot\..\data\policies\ | ForEach-Object {
    (Import-PowerShellDataFile -Path $_.FullName).Policies
}

#Load all remote files
$RemoteFiles = Get-ChildItem $PSScriptRoot\..\data\remote_files\ | ForEach-Object {
    (Import-PowerShellDataFile -Path $_.FullName).RemoteFiles
}

#Setup configuration data
$ConfigurationData =
@{
    AllNodes =
    @(
        @{
            NodeName         = "localhost"
            OptionalFeatures = $OptionalFeatures
            Policies         = $Policies
            RemoteFiles      = $RemoteFiles
        }
    )
}

# Dot source the client configuration
. $PSScriptRoot\..\configurations\ClientBaseline.ps1

# Generate MOFs
ClientBaseline -ConfigurationData $ConfigurationData -OutputPath .\mof\