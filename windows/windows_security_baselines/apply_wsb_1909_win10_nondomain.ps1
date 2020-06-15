$baseline = @{
    url  = "https://download.microsoft.com/download/8/5/C/85C25433-A1B0-4FFA-9429-7E023E7DA8D8/Windows%2010%20Version%201909%20and%20Windows%20Server%20Version%201909%20Security%20Baseline.zip"
    hash = "17893CAB07BC09C8BD97B44809155484"
    name = "windows_10_1909_baseline"
}

$lgpo = @{
    url  = "https://download.microsoft.com/download/8/5/C/85C25433-A1B0-4FFA-9429-7E023E7DA8D8/LGPO.zip"
    hash = "AC09D051891AC87577183FC7A09A465A"
    name = "lgpo"
}

# Download, verify and expand zips
foreach ($download in @($baseline, $lgpo)) {
    $downloadPath = "$env:temp\$($download.name).zip"
    
    Remove-Item $downloadPath | Out-Null
    Invoke-WebRequest -Uri $download.url  -OutFile $downloadPath
    $actualHash = (Get-FileHash -Path $downloadPath -Algorithm MD5).hash
    
    if ($actualHash -ne $download.hash) {
        throw [System.IO.FileNotFoundException] "Downloaded zip (hash $($download.hash)) doesn't appear to be the expected zip (hash $actualHash)."
    }

    Remove-Item "$env:temp\$($download.name)" -Recurse | Out-Null
    Expand-Archive -Path $downloadPath -DestinationPath "$env:temp\$($download.name)"
}

# Copy LGPO into the baseline folder
Copy-Item  -Path "$env:temp\$($lgpo.name)\lgpo.exe" -Destination "$env:temp\$($baseline.name)\Scripts\Tools\"

# Apply
Set-Location $env:temp\$($baseline.name)\Scripts\
./Baseline-LocalInstall.ps1 -Win10NonDomainJoined