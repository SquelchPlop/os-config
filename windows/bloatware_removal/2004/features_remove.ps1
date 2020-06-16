# Remove Windows features
dism /online /Disable-Feature /FeatureName:Internet-Explorer-Optional-amd64

Write-Output "Removed features"