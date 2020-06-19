# Create dir
$workingDir = "$env:temp\desired_state_configuration\"
New-Item -ItemType Directory -Force -Path $workingDir
Set-Location $workingDir
Remove-Item "$workingDir*" -Recurse | Out-Null #Ensure directory is clean

# Download required modules and latest MOF
$releases = "https://api.github.com/repos/SquelchPlop/os-config/releases"
$tag = (Invoke-WebRequest -URI $releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name
Invoke-RestMethod -URI "https://github.com/SquelchPlop/os-config/releases/download/$tag/install_required_modules.ps1" -UseBasicParsing -OutFile install_required_modules.ps1
Invoke-RestMethod -URI "https://github.com/SquelchPlop/os-config/releases/download/$tag/client_baseline.mof" -UseBasicParsing -OutFile localhost.mof

# Install required modules
./install_required_modules.ps1

# Apply DSC configuration
if(-not $(Test-PSRemoting -ComputerName "localhost")){
    Enable-PSRemoting -SkipNetworkProfileCheck
}
Start-DscConfiguration -Path ./ -Wait -Verbose -Force

# Refresh Local Group Policy
gpupdate
