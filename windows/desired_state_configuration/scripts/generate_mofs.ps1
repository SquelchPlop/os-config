#PreReq
& $PSScriptRoot\install_required_modules.ps1

#Capture configuration data from all .psd1 files
$loadedConfig = @{}

$dataFileNames = (Get-ChildItem "$PSScriptRoot\..\data\*.psd1").FullName

foreach ($dataFile in $dataFileNames) {
    $newData = Import-PowerShellDataFile -path $dataFile #Load each data file
    
    foreach ($type in $newData.Keys) {
        $loadedConfig[$type] += $newData.item($type) #For each type in the data file (Policies, Packages etc), append it to our list for each type
    }
}

#Setup configuration data structure, and add the loaded configuration data
$ConfigurationData = @{AllNodes = @( @{NodeName = "localhost" } + $loadedConfig ) }

# Dot source the client configuration
. $PSScriptRoot\..\configurations\ClientBaseline.ps1

# Generate MOFs
ClientBaseline -ConfigurationData $ConfigurationData -OutputPath .\mof\