$packageProviders = @(
    @{
        Name    = "NuGet"
        Version = 2.8.5.208
    }
)
$modules = @(
    @{
        Name    = "PolicyFileEditor"
        Version = "3.0.1"
    }
    @{
        Name    = "Test-PSRemoting"
        Version = "1.0.1"
    }
    @{
        Name    = "xPSDesiredStateConfiguration"
        Version = "9.1.0"
    }
    @{
        Name    = "cChoco"
        Version = "2.4.1.0"
    }
    @{
        Name    = "DSCR_Shortcut"
        Version = "1.3.8"
    }
)

$packageProviders | foreach-Object {
    $match = Get-PackageProvider -Name $_.Name -ListAvailable
    if ((-not $match) -or ($match.version -lt $_.Version )) {
        Install-PackageProvider -Name $_.Name -MinimumVersion $_.Version -Force -Confirm:$false
    }
    else {
        Write-Output "$($_.Name) already installed!"
    }
}

$modules | foreach-Object {
    if (-not (Get-Module -ListAvailable -FullyQualifiedName @{ModuleName = $_.Name; ModuleVersion = $_.Version; })) {
        Install-Module -Name $_.Name -RequiredVersion $_.Version -Force 
    }
    else {
        Write-Output "$($_.Name) $($_.Version) already installed!"
    }
}