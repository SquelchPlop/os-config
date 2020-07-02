Configuration ClientBaseline {
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xPSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'cChoco'
    Import-DscResource -ModuleName 'PolicyFileEditor'
    Import-DscResource -ModuleName 'DSCR_Shortcut'

    Node $AllNodes.NodeName {
        cChocoInstaller installChoco {
            InstallDir = "$env:ProgramData\chocolatey"
        }

        Script sourceSquelchplopPrivate {
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

        cChocoSource sourceSquelchplopPublic {
            Ensure="Present"
            DependsOn = "[cChocoInstaller]installChoco"
            Name="source-squelchplop-public"
            Source="https://pkgs.dev.azure.com/SquelchPlop/choco-public/_packaging/choco-public/nuget/v2/"
            Priority= 1
        }

        cChocoSource sourceChocolateyCommunity {
            Ensure="Present"
            DependsOn = "[cChocoInstaller]installChoco"
            Name="source-chocolatey-community"
            Source="https://chocolatey.org/api/v2/"
            Priority= 0
        }

        cChocoSource sourceChocolateyDefault {
            Ensure="Absent"
            DependsOn = "[cChocoInstaller]installChoco"
            Name="Chocolatey"
        }

        foreach ($ChocolateyPackage in $Node.ChocolateyPackages) {
            # https://github.com/chocolatey/cChoco/blob/development/DSCResources/cChocoPackageInstall/cChocoPackageInstall.schema.mof
            cChocoPackageInstaller $ChocolateyPackage.Name {
                Ensure      = $ChocolateyPackage.Ensure
                DependsOn   = $ChocolateyPackage.DependsOn
                Name        = $ChocolateyPackage.PackageName                
                Params      = $ChocolateyPackage.Params
                Version     = $ChocolateyPackage.MinimumVersion
                #MinimumVersion = $ChocolateyPackage.MinimumVersion in development
                Source      = $ChocolateyPackage.Source
                chocoParams = $ChocolateyPackage.chocoParams
                AutoUpgrade = $ChocolateyPackage.AutoUpgrade
            }
        }

        foreach ($File in $Node.Files) {
            # https://docs.microsoft.com/en-us/powershell/scripting/dsc/reference/resources/windows/fileresource?view=powershell-7
            File $File.Name {
                Ensure          = $File.Ensure
                DependsOn       = $File.DependsOn
                DestinationPath = $File.DestinationPath
                #Attributes      = $File.Attributes
                #Checksum        = $File.Checksum
                Force           = $File.Force
                Recurse         = $File.Recurse
                SourcePath      = $File.SourcePath
                Type            = $File.Type
                MatchSource     = $File.MatchSource
                Contents        = $File.Contents
            }
        }

        foreach ($Policy in $Node.Policies) {
            # https://github.com/dlwyatt/PolicyFileEditor/blob/master/DscResources/PshOrg_AdminTemplateSetting/PshOrg_AdminTemplateSetting.schema.mof
            cAdministrativeTemplateSetting $Policy.Name {
                Ensure       = $Policy.Ensure
                DependsOn    = $File.DependsOn
                PolicyType   = $Policy.PolicyType
                KeyValueName = $Policy.KeyValueName
                Type         = $Policy.Type
                Data         = $Policy.Data
            }
        }

        foreach ($Shortcut in $Node.Shortcuts) {
            # https://github.com/mkht/DSCR_Shortcut/blob/master/DSCResources/cShortcut/cShortcut.schema.mof
            cShortcut $Shortcut.Name {
                Ensure           = $Shortcut.Ensure
                DependsOn        = $File.DependsOn
                Target           = $Shortcut.Target
                Path             = $Shortcut.Path
                Arguments        = $Shortcut.Arguments
                WorkingDirectory = $Shortcut.WorkingDirectory
                Description      = $Shortcut.Description
                Icon             = $Shortcut.Icon
                HotKey           = $Shortcut.HotKey
                #WindowStyle      = $Shortcut.WindowStyle
            }
        }
    }
}