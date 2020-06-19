# Remove Windows features
dism /online /Disable-Feature /FeatureName:Internet-Explorer-Optional-amd64 /NoRestart

Write-Output "Removed features"