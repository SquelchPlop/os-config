@{
    ChocolateyPackages = @(
        @{
            Name        = "Visual Studio Code"
            Ensure      = "present"
            DependsOn   = "[cChocoInstaller]installChoco"
            PackageName = "vscode"
            Params      = "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders"
            MinimumVersion = "1.46.1"
            Source      = "https://chocolatey.org/api/v2/"
            AutoUpgrade = $True
        }
    )
    
    Shortcuts          = @(
        @{
            Name      = "Visual Studio Code Start Menu Shortcut"
            Ensure    = "Present"
            DependsOn = "[cChocoPackageInstaller]Visual Studio Code"
            Target    = "C:\Program Files\Microsoft VS Code\Code.exe"
            Path      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code.lnk"
        }
    )
    
    Files              = @(
        @{
            Name            = "Visual Studio Code Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Visual Studio Code"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}