@{  
    Scripts           = @(
        @{
            Name       = "sourceSquelchplopPrivate"
            DependsOn  = "[cChocoInstaller]installChoco"
            GetScript  = { }
            TestScript = { return $false } #Always apply in case token has changed
            SetScript  = {
                $registryPath = "HKLM:\Software\Chocolatey\source-squelchplop-private"
        
                if (!(Test-Path $registryPath)) {
                    throw "source-squelchplop-private user/token are not set in the registry!"
                }
        
                choco source add `
                    --name='source-squelchplop-private' `
                    --source='https://pkgs.dev.azure.com/SquelchPlop/choco-private/_packaging/choco-private/nuget/v2/' `
                    --priority=2 `
                    --user=$(Get-ItemPropertyValue -Path  $registryPath -name user) `
                    --password=$(Get-ItemPropertyValue -Path  $registryPath -name token)
            }
        }
    )

    ChocolateySources = @(
        @{
            Name       = "sourceSquelchplopPublic"
            Ensure     = "Present"
            DependsOn  = "[cChocoInstaller]installChoco"
            SourceName = "source-squelchplop-public"
            SourceUrl  = "https://pkgs.dev.azure.com/SquelchPlop/choco-public/_packaging/choco-public/nuget/v2/"
            Priority   = 1
        }
        @{
            Name       = "sourceChocolateyCommunity"
            Ensure     = "Present"
            DependsOn  = "[cChocoInstaller]installChoco"
            SourceName = "source-chocolatey-community"
            SourceUrl  = "https://chocolatey.org/api/v2/"
            Priority   = 0
        }
        @{
            Name       = "sourceChocolateyDefault"
            Ensure     = "Absent"
            DependsOn  = "[cChocoInstaller]installChoco"
            SourceName = "Chocolatey"
        }
    )
}