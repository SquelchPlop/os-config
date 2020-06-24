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

    Shortcuts          = @(
        @{
            Name      = "Plex Start Menu Shortcut"
            Ensure    = "Present"
            DependsOn = "[cChocoPackageInstaller]Plex"
            Target    = "C:\Program Files\Plex\Plex\Plex.exe"
            Path      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex.lnk"
        }
    )
    
    Files              = @(
        @{
            Name            = "Plex Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Plex"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}