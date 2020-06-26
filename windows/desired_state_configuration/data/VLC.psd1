@{  
    ChocolateyPackages = @(
        @{
            Name           = "VLC"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "vlc"
            MinimumVersion = "3.0.11"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )
    
    Files              = @(
        @{
            Name            = "VLC Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]VLC"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VLC Media Player.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC Media Player.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "VLC Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]VLC Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "VLC All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]VLC"
            DestinationPath = "C:\Users\Public\Desktop\VLC media player.lnk"
            Force           = $true
            Type            = "File"
        }
    )
}