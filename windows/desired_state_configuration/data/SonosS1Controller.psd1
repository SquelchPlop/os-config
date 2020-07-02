@{
    ChocolateyPackages = @(
        @{
            Name           = "Sonos S1 Controller"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceSquelchplopPublic"
            PackageName    = "sonos-s1-controller"
            MinimumVersion = "57.3.77280"
            Source         = "source-squelchplop-public"
            AutoUpgrade    = $True
        }
    )
    
    Files              = @(
        @{
            Name            = "Sonos S1 Controller Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Sonos S1 Controller"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sonos S1 Controller.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sonos S1 Controller\Sonos S1 Controller.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Sonos S1 Controller Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]Sonos S1 Controller Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sonos S1 Controller\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "Sonos S1 Controller All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Sonos S1 Controller"
            DestinationPath = "C:\Users\Public\Desktop\Sonos S1 Controller.lnk"
            Force           = $true
            Type            = "File"
        }
    )
}