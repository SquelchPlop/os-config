Configuration ClientBaseline {
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xPSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'cChoco'
    Import-DscResource -ModuleName 'PolicyFileEditor'
    Import-DscResource -ModuleName 'DSCR_Shortcut'

    Node $AllNodes.NodeName {
        cChocoInstaller installChoco
        {
            InstallDir = "$env:ProgramData\chocolatey"
        }

        foreach ($ChocolateyPackage in $Node.ChocolateyPackages) {
            # https://github.com/chocolatey/cChoco/blob/development/DSCResources/cChocoPackageInstall/cChocoPackageInstall.schema.mof
            cChocoPackageInstaller $ChocolateyPackage.Name {
                Ensure         = $ChocolateyPackage.Ensure
                DependsOn      = $ChocolateyPackage.DependsOn
                Name           = $ChocolateyPackage.PackageName                
                Params         = $ChocolateyPackage.Params
                Version        = $ChocolateyPackage.MinimumVersion
                #MinimumVersion = $ChocolateyPackage.MinimumVersion in development
                Source         = $ChocolateyPackage.Source
                chocoParams    = $ChocolateyPackage.chocoParams
                AutoUpgrade    = $ChocolateyPackage.AutoUpgrade
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