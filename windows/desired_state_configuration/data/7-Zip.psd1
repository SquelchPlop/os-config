@{  
    ChocolateyPackages = @(
        @{
            Name           = "7-Zip"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "7zip.install"
            MinimumVersion = "19.0"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "7-Zip Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]7-Zip"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}