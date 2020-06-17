$baseline = @{
    url  = "https://download.microsoft.com/download/8/5/C/85C25433-A1B0-4FFA-9429-7E023E7DA8D8/Windows%2010%20Version%201909%20and%20Windows%20Server%20Version%201909%20Security%20Baseline.zip"
    hash = "85DD248E8F8A08C0DA3CD34AAC0DE494A9E27BB5B935B1706DBD410C54511A6F"
    name = "windows_10_1909_baseline"
}

$lgpo = @{
    url  = "https://download.microsoft.com/download/8/5/C/85C25433-A1B0-4FFA-9429-7E023E7DA8D8/LGPO.zip"
    hash = "6FFB6416366652993C992280E29FAEA3507B5B5AA661C33BA1AF31F48ACEA9C4"
    name = "lgpo"
}

# Download, verify and expand zips
foreach ($download in @($baseline, $lgpo)) {
    $downloadPath = "$env:temp\$($download.name).zip"
    
    Remove-Item $downloadPath | Out-Null
    Invoke-WebRequest -Uri $download.url  -OutFile $downloadPath
    $actualHash = (Get-FileHash -Path $downloadPath -Algorithm SHA256).hash
    
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