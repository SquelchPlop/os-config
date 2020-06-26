@{  
    ChocolateyPackages = @(
        @{
            Name           = "Plex"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "plex"
            MinimumVersion = "1.13.0.1275"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "Plex Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Plex"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex\Plex.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Plex Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]Plex Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}